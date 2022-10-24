import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/common/di/get_it.dart';
import 'package:ielts_practice_mobile/page/login/cubit/login_cubit.dart';
import 'package:ielts_practice_mobile/page/login/view/login_view.dart';
import 'package:ielts_practice_mobile/repository/authentication_repository/authentication_repository.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: LoginCubit(
        authenticationRepository: getIt.get<AuthenticationRepository>(),
      ),
      child: const LoginView(),
    );
  }
}
