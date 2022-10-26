import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/util.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/model/enum/gender.dart';
import 'package:ielts_practice_mobile/repository/authentication_repository/authentication_repository.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc({required this.authenticationRepository})
      : super(const _SignUpState()) {
    on<_Started>(_onStarted);
    on<_Submitted>(_onSubmitted);
  }

  final AuthenticationRepository authenticationRepository;

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<SignUpState> emit,
  ) async {}

  FutureOr<void> _onSubmitted(
    _Submitted event,
    Emitter<SignUpState> emit,
  ) async {
    unawaited(showLoadingDialog());

    final result = await authenticationRepository.signUp(
      firstName: event.firstName,
      lastName: event.lastName,
      email: event.email,
      gender: event.gender,
      password: event.password,
    );

    if (result is ApiError) {
      // remove loading dialog
      getIt.navigator.pop();
      emit(SignUpState(errorMessage: (result as ApiError).message));
      emit(const SignUpState());
    }
  }
}
