import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/page/register/bloc/sign_up_bloc.dart';
import 'package:ielts_practice_mobile/page/register/view/sign_up_view.dart';
import 'package:ielts_practice_mobile/repository/authentication_repository/authentication_repository.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: SignUpBloc(
        authenticationRepository: getIt.get<AuthenticationRepository>(),
      )..add(const SignUpEvent.started()),
      child: const SignUpView(),
    );
  }
}
