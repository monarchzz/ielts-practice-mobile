import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ielts_practice_mobile/common/constant/token_ref.dart';
import 'package:ielts_practice_mobile/repository/authentication_repository/authentication_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioHelper {
  DioHelper({
    required this.dio,
    required this.sharedPreferences,
    required this.authenticationRepository,
  });

  final Dio dio;
  final SharedPreferences sharedPreferences;
  final AuthenticationRepository authenticationRepository;
  String token = '';

  Future<void> initApiClient() async {
    token = sharedPreferences.getString(TokenRef.accessTokenRefs) ?? '';

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] =
              // ignore: lines_longer_than_80_chars
              'Bearer ${sharedPreferences.getString(TokenRef.accessTokenRefs) ?? ''}';

          return handler.next(options);
        },
        onError: (error, handler) async {
          final origin = error.response;

          if (origin != null && origin.statusCode == 401) {
            final refreshTokenData =
                sharedPreferences.getString(TokenRef.refreshTokenRefs) ?? '';
            if (refreshTokenData.isNotEmpty) {
              try {
                final data = await dio.post<dynamic>(
                  '/auth/users/refresh-token',
                  data: {'refreshToken': refreshTokenData},
                );

                // ignore: avoid_dynamic_calls
                final accessToken = data.data['token'] as String;
                // ignore: avoid_dynamic_calls
                final refreshToken = data.data['refreshToken'] as String;

                await sharedPreferences.setString(
                  TokenRef.accessTokenRefs,
                  accessToken,
                );
                await sharedPreferences.setString(
                  TokenRef.refreshTokenRefs,
                  refreshToken,
                );
                token = accessToken;

                if (kDebugMode) {
                  print('New Token $token');
                }

                origin.headers.set('Authorization', 'Bearer $token');
                final x = error.requestOptions;
                final newRequest = await dio.request<dynamic>(
                  x.path,
                  data: x.data,
                  queryParameters: x.queryParameters,
                );
                handler.resolve(newRequest);
                return;
              } on DioError catch (e) {
                if (kDebugMode) {
                  print(e);
                }
                // logout
                await authenticationRepository.logOut();
              }
            } else {
              // logout
              await authenticationRepository.logOut();
            }
          }
          handler.next(error);
          return;
        },
      ),
    );
  }
}
