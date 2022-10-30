import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/page/bottom_navigation/bottom_navigation.dart';
import 'package:ielts_practice_mobile/page/login/login.dart';
import 'package:ielts_practice_mobile/page/register/sign_up.dart';
import 'package:ielts_practice_mobile/page/splash/splash.dart';

mixin AppRoute {
  static Map<String, WidgetBuilder> get routes => {
        RouteName.splash: (context) => const SplashPage(),
        RouteName.login: (context) => const LoginPage(),
        RouteName.signUp: (context) => const SignUpPage(),
        RouteName.bottomNavigation: (context) => const BottomNavigationPage(),
      };
}

mixin RouteName {
  static const String splash = '/';
  static const String login = '/login';
  static const String signUp = '/login/sign-up';
  static const String bottomNavigation = '/bottom-navigation';
}
