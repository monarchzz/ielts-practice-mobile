import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/typedef.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/model/enum/study_programme_type.dart';
import 'package:ielts_practice_mobile/model/problem.dart';

extension NavigatorStateX on GetIt {
  NavigatorState get navigator =>
      getIt.get<GlobalKey<NavigatorState>>().currentState!;
}

extension ApiResponseX on DioError {
  ApiResponse<T> toResponseError<T>() {
    try {
      log(toString());
      final error = Problem.fromJson(response!.data as ObjectResponse);
      return ApiResponse.error(message: error.errors[0].description);
    } catch (e) {
      return const ApiResponse.error(message: 'Unknown error');
    }
  }
}

extension NetworkX on String {
  String? getUuid() {
    final array = split('/');
    final uuid = array.last;

    final exp = RegExp(
      r'^[0-9a-fA-F]{8}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{4}\b-[0-9a-fA-F]{12}$',
    );

    if (exp.hasMatch(uuid)) {
      return uuid;
    }

    return null;
  }
}

extension ValidationX on String {
  bool isNumber() {
    if (isEmpty) return false;
    final exp = RegExp(r'^\d+$');
    return exp.hasMatch(this);
  }

  bool isEmail() {
    if (isEmpty) return false;
    final exp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return exp.hasMatch(this);
  }
}

extension StudyProgrammeTypeColorX on StudyProgrammeType {
  Color getColor() {
    switch (this) {
      case StudyProgrammeType.target4To6:
      case StudyProgrammeType.target6To8:
      case StudyProgrammeType.target8To9:
        return const Color(0xfff0ebf9);
      case StudyProgrammeType.listeningSection:
        return const Color(0xff5c89e7);
      case StudyProgrammeType.speakingSection:
        return const Color(0xff83d7be);
    }
  }
}

extension ScreenX on BuildContext {
  double get screenHeight => MediaQuery.of(this).size.height;
  double get screenWidth => MediaQuery.of(this).size.width;
}
