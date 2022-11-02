import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ielts_practice_mobile/common/constant/network.dart';
import 'package:ielts_practice_mobile/common/helper/dio_helper.dart';
import 'package:ielts_practice_mobile/repository/attachment_repository/attachment_repository.dart';
import 'package:ielts_practice_mobile/repository/authentication_repository/authentication_repository.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  final options = BaseOptions(
    baseUrl: NetworkConfig.baseUrl,
    connectTimeout: NetworkConfig.connectTimeout,
    receiveTimeout: NetworkConfig.receiveTimeout,
  );
  final dio = Dio(options);

  final authenticationRepository =
      AuthenticationRepository(dio: dio, sharedPreferences: sharedPreferences);

  final helper = DioHelper(
    dio: dio,
    sharedPreferences: sharedPreferences,
    authenticationRepository: authenticationRepository,
  );
  await helper.initApiClient();

  getIt
    ..registerSingleton<SharedPreferences>(sharedPreferences)
    ..registerSingleton<Dio>(dio)
    ..registerSingleton<ImagePicker>(ImagePicker())
    ..registerSingleton<AuthenticationRepository>(authenticationRepository)
    ..registerSingleton<UserRepository>(UserRepository(dio: dio))
    ..registerSingleton<AttachmentRepository>(
      AttachmentRepository(
        dio: dio,
      ),
    );

  //* register navigator global key
  final navigatorKey = GlobalKey<NavigatorState>();
  getIt.registerSingleton<GlobalKey<NavigatorState>>(navigatorKey);
}
