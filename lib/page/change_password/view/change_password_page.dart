import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/page/change_password/bloc/change_password_bloc.dart';
import 'package:ielts_practice_mobile/page/change_password/view/change_password_view.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ChangePasswordBloc(userRepository: getIt.get<UserRepository>()),
      child: ChangePasswordView(),
    );
  }
}
