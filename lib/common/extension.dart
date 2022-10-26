import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/typedef.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/model/problem.dart';

extension NavigatorStateX on GetIt {
  NavigatorState get navigator =>
      getIt.get<GlobalKey<NavigatorState>>().currentState!;
}

extension ApiResponseX on DioError {
  ApiResponse<T> toResponseError<T>() {
    try {
      final error = Problem.fromJson(response!.data as DioResponse);
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
}
