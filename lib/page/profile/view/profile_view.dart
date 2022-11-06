import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/app/route.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/common/util.dart';
import 'package:ielts_practice_mobile/common/widget/circle_avatar.dart';
import 'package:ielts_practice_mobile/common/widget/content_wrapper.dart';
import 'package:ielts_practice_mobile/common/widget/failure_widget.dart';
import 'package:ielts_practice_mobile/common/widget/loading_widget.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/gender.dart';
import 'package:ielts_practice_mobile/page/profile/bloc/profile_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  Future<void> _handleUpdateAvatarTap(BuildContext context) async {
    final image =
        await getIt.get<ImagePicker>().pickImage(source: ImageSource.gallery);

    if (image != null) {
      if (!mounted) return;
      context.read<ProfileBloc>().add(ProfileEvent.avatarUploaded(image.path));
    }
  }

  void _handleEditProfileTap(BuildContext context) {}

  void _handleSettingTap(BuildContext context) {
    getIt.navigator.pushNamed(RouteName.setting);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocConsumer<ProfileBloc, ProfileState>(
      listenWhen: (previous, current) =>
          previous.mapOrNull(
            success: (value) => value.errorMessage,
          ) !=
          current.mapOrNull(
            success: (value) => value.errorMessage,
          ),
      listener: (context, state) {
        final message = state.mapOrNull(
          success: (value) => value.errorMessage,
        );
        if (message != null) {
          showErrorMessageDialog(l10n.alert, message);
        }
      },
      buildWhen: (previous, current) =>
          previous.mapOrNull(
            success: (value) => value.user,
          ) !=
          current.mapOrNull(
            success: (value) => value.user,
          ),
      builder: (context, state) {
        return state.map(
          loading: (_) => const LoadingWidget(),
          success: (value) {
            final user = value.user;
            final dateOfBirth = DateFormat.yMd('vi').format(user.dateOfBirth);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppSize.s4,
                ),
                SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppSize.s6),
                    child: Row(
                      children: [
                        Text(
                          l10n.library,
                          style: AppTextStyle.j24b,
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () => _handleSettingTap(context),
                          icon: const Icon(
                            Icons.settings_outlined,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: AppSize.s7,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => _handleUpdateAvatarTap(context),
                        child: CachedNetworkCircleAvatar(
                          hasCamera: true,
                          size: 60,
                          imageUrl: user.avatar?.url ?? '',
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppSize.s2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSize.s6),
                  child: ContentWrapper(
                    headerText: l10n.information,
                    hasEditIcon: true,
                    onEditIconPressed: () => _handleEditProfileTap(context),
                    content: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppSize.s6,
                        vertical: AppSize.s6,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            '${user.firstName} ${user.lastName}',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.black,
                            ),
                          ),
                          const SizedBox(height: AppSize.s4),
                          Text(
                            String.fromCharCodes(
                              Runes('\u{2709}    ${user.email}'),
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.jetBlack,
                            ),
                          ),
                          const SizedBox(height: AppSize.s2),
                          Text(
                            String.fromCharCodes(
                              Runes('\u{26A5}    ${user.gender.getName(l10n)}'),
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.jetBlack,
                            ),
                          ),
                          const SizedBox(height: AppSize.s2),
                          Text(
                            String.fromCharCodes(
                              Runes('\u{1F382} $dateOfBirth'),
                            ),
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: AppColor.jetBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            );
          },
          failure: (value) => FailureWidget(
            message: value.message,
          ),
        );
      },
    );
  }
}
