import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ielts_practice_mobile/authentication/model/authentication.dart';
import 'package:ielts_practice_mobile/common/constant/authentication.dart';
import 'package:ielts_practice_mobile/common/constant/network.dart';
import 'package:ielts_practice_mobile/common/model/api_response.dart';
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
    if (_sharedPreferences.getString(AuthenticationConfig.accessTokenRefs) !=
        null) {
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
          AuthenticationConfig.accessTokenRefs,
          auth.token,
        );
        await _sharedPreferences.setString(
          AuthenticationConfig.refreshTokenRefs,
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
      AuthenticationConfig.accessTokenRefs,
      '',
    );
    await _sharedPreferences.setString(
      AuthenticationConfig.refreshTokenRefs,
      '',
    );
  }

  void dispose() => _controller.close();
}
