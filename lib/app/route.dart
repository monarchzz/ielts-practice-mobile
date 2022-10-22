import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/page/home/home.dart';
import 'package:ielts_practice_mobile/page/login/login.dart';
import 'package:ielts_practice_mobile/page/splash/splash.dart';

mixin AppRoute {
  static Map<String, WidgetBuilder> get routes => {
        RouteName.home: (context) => const HomePage(),
        RouteName.login: (context) => const LoginPage(),
        RouteName.splash: (context) => const SplashPage(),
      };
}

mixin RouteName {
  static const String home = '/home';
  static const String login = '/login';
  static const String splash = '/';
}
