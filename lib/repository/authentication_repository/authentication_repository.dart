import 'dart:async';

import 'package:dio/dio.dart';
import 'package:ielts_practice_mobile/common/constant/network.dart';
import 'package:ielts_practice_mobile/common/constant/token_ref.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/model/authentication.dart';
import 'package:ielts_practice_mobile/model/enum/gender.dart';
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
    final l10n = await L10nUtil.l10n;
    try {
      final result = await _dio.post<Map<String, dynamic>>(
        '/auth/users/login',
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
    } on DioError catch (_) {
      return ApiResponse.error(message: l10n.authInCorrect);
    }
  }

  Future<ApiResponse<String>> signUp({
    required String firstName,
    required String lastName,
    required String email,
    required Gender gender,
    required String password,
    required DateTime dateOfBirth,
  }) async {
    try {
      final result = await _dio.post<Map<String, dynamic>>(
        '/auth/users/register',
        data: {
          'firstName': firstName,
          'lastName': lastName,
          'email': email,
          'password': password,
          'gender': gender.name,
          'dateOfBirth': dateOfBirth.toIso8601String()
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

        return const ApiResponse.success('');
      }

      return const ApiError(message: 'Oops! Something went wrong.');
    } on DioError catch (e) {
      return e.toResponseError();
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
