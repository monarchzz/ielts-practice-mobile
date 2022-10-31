import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/util.dart';
import 'package:ielts_practice_mobile/common/widget/auth_text_form_field_widget.dart';
import 'package:ielts_practice_mobile/common/widget/page_container.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/gender.dart';
import 'package:ielts_practice_mobile/page/register/bloc/sign_up_bloc.dart';
import 'package:intl/intl.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';
  String _confirmPassword = '';
  Gender _gender = Gender.male;
  String _firstName = '';
  String _lastName = '';
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;
  DateTime _dateOfBirth = DateTime.now();

  void _handleSignUp() {
    FocusScope.of(context).unfocus();
    context.read<SignUpBloc>().add(
          SignUpEvent.submitted(
            _email,
            _firstName,
            _lastName,
            _password,
            _gender,
            _dateOfBirth,
          ),
        );
  }

  Future<void> _handleDateOfBirth() async {
    FocusScope.of(context).unfocus();

    final date = await showDatePicker(
      context: context,
      initialDate: _dateOfBirth,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    setState(() {
      _dateOfBirth = date ?? _dateOfBirth;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocListener<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          showErrorMessageDialog(l10n.alert, state.errorMessage!);
        }
      },
      child: Scaffold(
        body: PageContainer(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              onChanged: () {
                setState(() {
                  Form.of(primaryFocus!.context!)!.save();
                });
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: AppSize.s10,
                  ),
                  Text(
                    l10n.signUp,
                    style: AppTextStyle.j24,
                  ),
                  const SizedBox(
                    height: AppSize.s8,
                  ),
                  AuthTextFormFieldWidget(
                    hintText: l10n.firstName,
                    prefixIcon: const Icon(
                      Icons.person_outline,
                    ),
                    onSaved: (String? newValue) {
                      if (newValue != null) {
                        _firstName = newValue;
                      }
                    },
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return l10n.firstNameEmpty;
                      }

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: AppSize.s6,
                  ),
                  AuthTextFormFieldWidget(
                    hintText: l10n.lastName,
                    prefixIcon: const Icon(
                      Icons.person_outline,
                    ),
                    onSaved: (String? newValue) {
                      if (newValue != null) {
                        _lastName = newValue;
                      }
                    },
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return l10n.lastNameEmpty;
                      }

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: AppSize.s6,
                  ),
                  SizedBox(
                    height: 60,
                    child: InputDecorator(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(AppSize.s4),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.male_outlined,
                            color: AppColor.dimGray,
                          ),
                          Text(
                            l10n.gender,
                            style: AppTextStyle.j16.copyWith(
                              color: AppColor.dimGray,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 5 * 3,
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                isExpanded: true,
                                value: _gender,
                                alignment: AlignmentDirectional.centerEnd,
                                items: [
                                  DropdownMenuItem<Gender>(
                                    value: Gender.male,
                                    child: Text(Gender.male.name),
                                  ),
                                  DropdownMenuItem<Gender>(
                                    value: Gender.female,
                                    child: Text(Gender.female.name),
                                  ),
                                ],
                                onChanged: (value) {
                                  setState(() {
                                    _gender = value!;
                                  });
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s6,
                  ),
                  GestureDetector(
                    onTap: _handleDateOfBirth,
                    child: SizedBox(
                      height: 60,
                      child: InputDecorator(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(AppSize.s4),
                          ),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.event_outlined,
                              color: AppColor.dimGray,
                            ),
                            const SizedBox(width: AppSize.s5),
                            Text(
                              l10n.dateOfBirth,
                              style: AppTextStyle.j16.copyWith(
                                color: AppColor.dimGray,
                              ),
                            ),
                            const Spacer(),
                            Text(
                              DateFormat.yMMMMd(Intl.getCurrentLocale())
                                  .format(_dateOfBirth),
                              style: AppTextStyle.j14,
                            ),
                            const SizedBox(
                              width: AppSize.s2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s6,
                  ),
                  AuthTextFormFieldWidget(
                    hintText: l10n.email,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                    onSaved: (String? newValue) {
                      if (newValue != null) {
                        _email = newValue;
                      }
                    },
                    validator: (String? value) {
                      if (value != null &&
                          (value.isEmpty || !value.isEmail())) {
                        return l10n.emailInvalid;
                      }

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: AppSize.s6,
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

                      if (value != null && value.length < 6) {
                        return l10n.passwordInvalid;
                      }

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: AppSize.s6,
                  ),
                  AuthTextFormFieldWidget(
                    hintText: l10n.confirmPassword,
                    suffixIcon: _confirmPassword.isNotEmpty
                        ? IconButton(
                            onPressed: () => setState(() {
                              _confirmPasswordVisible =
                                  !_confirmPasswordVisible;
                            }),
                            icon: Icon(
                              _confirmPasswordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          )
                        : null,
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    obscureText: !_confirmPasswordVisible,
                    onSaved: (String? newValue) {
                      if (newValue != null) {
                        _confirmPassword = newValue;
                      }
                    },
                    validator: (String? value) {
                      if (value != null &&
                          (value.isEmpty || value != _password)) {
                        return l10n.confirmPasswordNotMatch;
                      }

                      return null;
                    },
                  ),
                  const SizedBox(
                    height: AppSize.s8,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _handleSignUp();
                        }
                      },
                      child: Text(
                        l10n.signUp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
