import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/util.dart';
import 'package:ielts_practice_mobile/model/api_response.dart';
import 'package:ielts_practice_mobile/repository/authentication_repository/authentication_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required AuthenticationRepository authenticationRepository})
      : _authenticationRepository = authenticationRepository,
        super(const LoginState());

  final AuthenticationRepository _authenticationRepository;

  Future<void> submit(String username, String password) async {
    // show loading dialog
    unawaited(showLoadingDialog());

    final loginResponse =
        await _authenticationRepository.login(username, password);

    if (loginResponse is ApiError) {
      // remove loading dialog
      getIt.navigator.pop();
      emit(LoginState(message: (loginResponse as ApiError).message));
      emit(const LoginState());
    }
  }

  @override
  Future<void> close() {
    // _authenticationRepository.dispose();
    return super.close();
  }
}
