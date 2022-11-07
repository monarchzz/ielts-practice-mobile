import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/app/route.dart';
import 'package:ielts_practice_mobile/authentication/bloc/authentication_bloc.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/widget/failure_widget.dart';
import 'package:ielts_practice_mobile/common/widget/loading_widget.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/gender.dart';
import 'package:ielts_practice_mobile/page/setting/bloc/setting_bloc.dart';
import 'package:ielts_practice_mobile/page/setting/widget/change_gender_widget.dart';
import 'package:ielts_practice_mobile/page/setting/widget/change_name_widget.dart';
import 'package:ielts_practice_mobile/page/setting/widget/profile_item.dart';
import 'package:intl/intl.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l10n.setting,
          style: AppTextStyle.j16b,
        ),
        backgroundColor: AppColor.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
      ),
      body: BlocBuilder<SettingBloc, SettingState>(
        builder: (context, state) {
          return state.map(
            loading: (value) => const LoadingWidget(),
            success: (value) {
              final user = value.user;
              return Column(
                children: [
                  const SizedBox(
                    height: AppSize.s4,
                  ),
                  ProfileItem(
                    hasIcon: false,
                    title: l10n.email,
                    text: user.email,
                  ),
                  const Divider(
                    height: 1,
                  ),
                  ProfileItem(
                    onTap: () => _handleChangeName(
                      context,
                      user.firstName,
                      user.lastName,
                    ),
                    hasIcon: true,
                    title: l10n.name,
                    text: '${user.firstName} ${user.lastName}',
                  ),
                  const Divider(
                    height: 1,
                  ),
                  const Divider(
                    height: 1,
                  ),
                  ProfileItem(
                    onTap: () => _handleChangeGender(context, user.gender),
                    hasIcon: true,
                    title: l10n.gender,
                    text: user.gender.getName(l10n),
                  ),
                  const Divider(
                    height: 1,
                  ),
                  ProfileItem(
                    onTap: () => _handleChangeDateOfBirth(
                      context,
                      user.dateOfBirth,
                    ),
                    hasIcon: true,
                    title: l10n.dateOfBirth,
                    text: DateFormat.yMd('vi').format(user.dateOfBirth),
                  ),
                  const Divider(
                    thickness: 10,
                    height: 10,
                  ),
                  ProfileItem(
                    onTap: _handleChangePassword,
                    hasIcon: false,
                    title: l10n.changePassword,
                  ),
                  const Divider(
                    height: 1,
                  ),
                  ProfileItem(
                    onTap: () => _handleLogout(context),
                    hasIcon: false,
                    title: l10n.logout,
                  ),
                  const Divider(
                    height: 1,
                  ),
                ],
              );
            },
            failure: (value) => FailureWidget(
              message: value.message,
            ),
          );
        },
      ),
    );
  }

  void _handleLogout(BuildContext context) {
    context
        .read<AuthenticationBloc>()
        .add(const AuthenticationEvent.logoutRequested());
  }

  void _handleChangePassword() {
    getIt.navigator.pushNamed(RouteName.changePassword);
  }

  Future<void> _handleChangeName(
    BuildContext context,
    String firstName,
    String lastName,
  ) async {
    final bloc = context.read<SettingBloc>();
    final nameMap = await showDialog<Map<String, String>>(
      context: context,
      builder: (dialogContext) {
        return ChangeNameWidget(firstName: firstName, lastName: lastName);
      },
    );
    if (nameMap != null) {
      bloc.add(
        SettingEvent.nameChanged(
          nameMap['firstName']!,
          nameMap['lastName']!,
        ),
      );
    }
  }

  Future<void> _handleChangeGender(BuildContext context, Gender gender) async {
    final bloc = context.read<SettingBloc>();
    final newGender = await showDialog<Gender>(
      context: context,
      builder: (dialogContext) {
        return ChangeGenderWidget(gender: gender);
      },
    );
    if (newGender != null) {
      bloc.add(SettingEvent.genderChanged(newGender));
    }
  }

  Future<void> _handleChangeDateOfBirth(
    BuildContext context,
    DateTime dateOfBirth,
  ) async {
    final bloc = context.read<SettingBloc>();
    final date = await showDatePicker(
      context: context,
      initialDate: dateOfBirth,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (date != null) {
      bloc.add(SettingEvent.dateOfBirthChanged(date));
    }
  }
}
