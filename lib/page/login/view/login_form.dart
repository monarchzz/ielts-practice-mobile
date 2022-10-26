import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/widget/auth_text_form_field_widget.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.onSubmit});

  final void Function(String username, String password) onSubmit;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.disabled,
      onChanged: () {
        setState(() {
          Form.of(primaryFocus!.context!)!.save();
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AuthTextFormFieldWidget(
            hintText: l10n.username,
            prefixIcon: const Icon(
              Icons.email,
            ),
            onSaved: (String? newValue) {
              if (newValue != null) {
                _username = newValue;
              }
            },
            validator: (String? value) {
              if (value != null && value.isEmpty) {
                return l10n.usernameEmpty;
              }

              return null;
            },
          ),
          const SizedBox(
            height: AppSize.s8,
          ),
          AuthTextFormFieldWidget(
            hintText: l10n.password,
            suffixIcon: _password.isNotEmpty
                ? IconButton(
                    onPressed: () => setState(() {
                      _passwordVisible = !_passwordVisible;
                    }),
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                  )
                : null,
            prefixIcon: const Icon(
              Icons.lock,
            ),
            obscureText: !_passwordVisible,
            onSaved: (String? newValue) {
              if (newValue != null) {
                _password = newValue;
              }
            },
            validator: (String? value) {
              if (value != null && value.isEmpty) {
                return l10n.passwordEmpty;
              }

              return null;
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 8,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  widget.onSubmit(_username, _password);
                }
              },
              child: Text(
                l10n.login,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
