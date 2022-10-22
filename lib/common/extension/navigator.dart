import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ielts_practice_mobile/common/di/get_it.dart';

extension NavigatorStateX on GetIt {
  NavigatorState get navigator =>
      getIt.get<GlobalKey<NavigatorState>>().currentState!;
}
