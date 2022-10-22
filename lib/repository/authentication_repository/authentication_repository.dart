import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ielts_practice_mobile/common/constant/network.dart';
import 'package:ielts_practice_mobile/common/constant/token_ref.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/model/authentication.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthenticationRepository {
  AuthenticationRepository({
    required Dio dio,
    required SharedPreferences sharedPreferences,
  })  : _dio = dio,
        _sharedPreferences = sharedPreferences;

  final Dio _dio;
  final SharedPreferences _sharedPreferences;
  final _controller = StreamController<AuthenticationStatus>.broadcast();

  Stream<AuthenticationStatus> get status async* {
    yield AuthenticationStatus.unknown;
    if (_sharedPreferences.getString(TokenRef.accessTokenRefs) != null) {
      yield AuthenticationStatus.authenticated;
    } else {
      yield AuthenticationStatus.unauthenticated;
    }

    yield* _controller.stream;
  }

  Future<ApiResponse<bool>> login(String username, String password) async {
    try {
      final result = await _dio.post<Map<String, dynamic>>(
        '/auth/login',
        data: {
          'username': username,
          'password': password,
        },
      );

      if (result.data != null && result.statusCode == StatusCodes.status200OK) {
        final auth = Authentication.fromJson(result.data!);

        await _sharedPreferences.setString(
          TokenRef.accessTokenRefs,
          auth.token,
        );
        await _sharedPreferences.setString(
          TokenRef.refreshTokenRefs,
          auth.refreshToken,
        );

        // update auth status
        _controller.add(AuthenticationStatus.authenticated);

        return const ApiResponse.success(true);
      }

      return const ApiError(message: 'Oops! Something went wrong.');
    } catch (e) {
      return ApiResponse.error(message: e.toString());
    }
  }

  Future<void> logOut() async {
    _controller.add(AuthenticationStatus.unauthenticated);
    await _sharedPreferences.setString(
      TokenRef.accessTokenRefs,
      '',
    );
    await _sharedPreferences.setString(
      TokenRef.refreshTokenRefs,
      '',
    );
  }

  void dispose() => _controller.close();
}
