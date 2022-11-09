import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/page/change_password/bloc/change_password_bloc.dart';
import 'package:ielts_practice_mobile/page/change_password/widget/password_item.dart';

class ChangePasswordView extends StatelessWidget {
  ChangePasswordView({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.changePassword,
          style: AppTextStyle.j16b,
        ),
        backgroundColor: AppColor.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
        actions: [
          TextButton(
            onPressed: () => _handleSaveButton(context),
            child: Text(
              l10n.save,
              style: AppTextStyle.p14,
            ),
          )
        ],
      ),
      backgroundColor: AppColor.background,
      body: Column(
        children: [
          const SizedBox(
            height: AppSize.s4,
          ),
          Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: BlocBuilder<ChangePasswordBloc, ChangePasswordState>(
              builder: (context, state) {
                final currentPassword = state.currentPassword;
                final newPassword = state.newPassword;
                final confirmNewPassword = state.confirmNewPassword;

                return Column(
                  children: [
                    PasswordItem(
                      hintText: l10n.currentPassword,
                      text: currentPassword,
                      onChanged: (value) =>
                          _handleCurrentPasswordChange(value, context),
                      validator: (String? value) =>
                          _handleCurrentPasswordValidator(value, l10n),
                    ),
                    PasswordItem(
                      hintText: l10n.newPassword,
                      text: newPassword,
                      onChanged: (value) =>
                          _handleNewPasswordChange(value, context),
                      validator: (String? value) => _handleNewPasswordValidator(
                        value,
                        currentPassword,
                        l10n,
                      ),
                    ),
                    PasswordItem(
                      hintText: l10n.confirmNewPassword,
                      text: confirmNewPassword,
                      onChanged: (value) => _handleConfirmNewPasswordChange(
                        value,
                        context,
                      ),
                      validator: (String? value) =>
                          _handleConfirmNewPasswordValidator(
                        value,
                        newPassword,
                        l10n,
                      ),
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }

  void _handleSaveButton(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      FocusScope.of(context).unfocus();
      context
          .read<ChangePasswordBloc>()
          .add(const ChangePasswordEvent.submitted());
    }
  }

  String? _handleCurrentPasswordValidator(
    String? value,
    AppLocalizations l10n,
  ) {
    if (value == null || value.isEmpty) {
      return l10n.passwordEmpty;
    }
    if (value.length < 6) {
      return l10n.passwordInvalid;
    }

    return null;
  }

  String? _handleNewPasswordValidator(
    String? value,
    String currentPassword,
    AppLocalizations l10n,
  ) {
    if (value == null || value.isEmpty) {
      return l10n.passwordEmpty;
    }
    if (value.length < 6) {
      return l10n.passwordInvalid;
    }

    if (currentPassword == value) {
      return l10n.newPasswordSameAsOld;
    }

    return null;
  }

  String? _handleConfirmNewPasswordValidator(
    String? value,
    String newPassword,
    AppLocalizations l10n,
  ) {
    if (value == null || value.isEmpty) {
      return l10n.passwordEmpty;
    }
    if (value.length < 6) {
      return l10n.passwordInvalid;
    }

    if (newPassword != value) {
      return l10n.confirmPasswordNotMatch;
    }

    return null;
  }

  void _handleCurrentPasswordChange(String value, BuildContext context) {
    context
        .read<ChangePasswordBloc>()
        .add(ChangePasswordEvent.currentPasswordChanged(value));
  }

  void _handleConfirmNewPasswordChange(String value, BuildContext context) {
    context
        .read<ChangePasswordBloc>()
        .add(ChangePasswordEvent.confirmNewPasswordChanged(value));
  }

  void _handleNewPasswordChange(String value, BuildContext context) {
    context
        .read<ChangePasswordBloc>()
        .add(ChangePasswordEvent.newPasswordChanged(value));
  }
}
