import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/app/observer.dart';
import 'package:ielts_practice_mobile/app/route.dart';
import 'package:ielts_practice_mobile/app/theme.dart';
import 'package:ielts_practice_mobile/authentication/bloc/authentication_bloc.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/repository/authentication_repository/authentication_repository.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: AuthenticationBloc(
        authenticationRepository: getIt.get<AuthenticationRepository>(),
        userRepository: getIt.get<UserRepository>(),
      ),
      child: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  final _navigatorKey = getIt.get<GlobalKey<NavigatorState>>();
  NavigatorState get _navigator => _navigatorKey.currentState!;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorObservers: [Observer.routeObserver],
      routes: AppRoute.routes,
      builder: (context, child) {
        return BlocListener<AuthenticationBloc, AuthenticationState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            switch (state.status) {
              case AuthenticationStatus.authenticated:
                _navigator.pushNamedAndRemoveUntil(
                  RouteName.bottomNavigation,
                  (route) => false,
                );

                break;
              case AuthenticationStatus.unauthenticated:
                _navigator.pushNamedAndRemoveUntil(
                  RouteName.login,
                  (route) => false,
                );

                break;
              case AuthenticationStatus.unknown:
                break;
            }
          },
          child: child,
        );
      },
      initialRoute: RouteName.splash,
    );
  }
}
