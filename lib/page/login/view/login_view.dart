import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/app/route.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/util.dart';
import 'package:ielts_practice_mobile/common/widget/page_container.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/page/login/cubit/login_cubit.dart';
import 'package:ielts_practice_mobile/page/login/view/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  void _handleRegister() {
    getIt.navigator.pushNamed(RouteName.signUp);
  }

  Future<void> _handleLoginSubmit(
    BuildContext context,
    String username,
    String password,
  ) async {
    await context.read<LoginCubit>().submit(username, password);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.message != null && state.message!.isNotEmpty) {
          showErrorMessageDialog(l10n.alert, state.message!);
        }
      },
      child: Scaffold(
        backgroundColor: AppColor.background,
        body: PageContainer(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    l10n.loginTitle,
                    style: AppTextStyle.j24,
                  ),
                  const SizedBox(
                    height: AppSize.s10,
                  ),
                  LoginForm(
                    onSubmit: (username, password) => _handleLoginSubmit(
                      context,
                      username,
                      password,
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        l10n.account,
                      ),
                      TextButton(
                        onPressed: _handleRegister,
                        child: Text(
                          l10n.signUpNow,
                          style: const TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
