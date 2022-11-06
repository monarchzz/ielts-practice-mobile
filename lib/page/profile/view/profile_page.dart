import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/page/profile/bloc/profile_bloc.dart';
import 'package:ielts_practice_mobile/page/profile/view/profile_view.dart';
import 'package:ielts_practice_mobile/repository/attachment_repository/attachment_repository.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: ProfileBloc(
        attachmentRepository: getIt.get<AttachmentRepository>(),
        userRepository: getIt.get<UserRepository>(),
      )..add(
          const ProfileEvent.started(),
        ),
      child: const ProfileView(),
    );
  }
}
