import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/page/setting/bloc/setting_bloc.dart';
import 'package:ielts_practice_mobile/page/setting/view/setting_view.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: SettingBloc(userRepository: getIt.get<UserRepository>())
        ..add(
          const SettingEvent.started(),
        ),
      child: const SettingView(),
    );
  }
}
