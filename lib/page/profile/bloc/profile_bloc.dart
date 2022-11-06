import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/util.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/model/user.dart';
import 'package:ielts_practice_mobile/repository/attachment_repository/attachment_repository.dart';
import 'package:ielts_practice_mobile/repository/user_repository/user_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required this.attachmentRepository,
    required this.userRepository,
  }) : super(const _Loading()) {
    on<_Started>(_onStarted);
    on<_AvatarUpdated>(_onAvatarUpdated);
  }

  final AttachmentRepository attachmentRepository;
  final UserRepository userRepository;

  FutureOr<void> _onAvatarUpdated(
    _AvatarUpdated event,
    Emitter<ProfileState> emit,
  ) async {
    if (state is! _Success) return;
    final currentState = state as _Success;
    final user = currentState.user;
    // show dialog
    unawaited(showLoadingDialog());

    final result = await attachmentRepository.uploadImage(event.path);

    if (result is ApiError) {
      // hide dialog
      getIt.navigator.pop();
      emit(
        (state as _Success)
            .copyWith(errorMessage: (result as ApiError).message),
      );
    }
    if (result is ApiSuccess) {
      final updateUserResult = await userRepository.selfUpdate(
        id: user.id,
        firstName: user.firstName,
        lastName: user.lastName,
        gender: user.gender,
        dateOfBirth: user.dateOfBirth,
        avatarId: (result as ApiSuccess<String>).value,
      );

      // hide dialog
      getIt.navigator.pop();

      if (updateUserResult is ApiSuccess) {
        final newUser = await userRepository.getUser();
        if (newUser != null) {
          emit(currentState.copyWith(user: newUser));
        }
      }

      if (updateUserResult is ApiError) {
        emit(
          currentState.copyWith(
            errorMessage: (updateUserResult as ApiError).message,
          ),
        );
        emit(currentState.copyWith(errorMessage: null));
      }
    }
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<ProfileState> emit,
  ) async {
    final l10n = await L10nUtil.l10n;

    final user = await userRepository.getUser();
    if (user == null) {
      emit(ProfileState.failure(message: l10n.unknownError));
      return;
    }
    emit(ProfileState.success(user: user));
  }
}
