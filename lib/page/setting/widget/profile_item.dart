import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.onTap,
    required this.title,
    required this.hasLeftIcon,
    this.text,
  });

  final VoidCallback onTap;
  final String title;
  final bool hasLeftIcon;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        padding: const EdgeInsets.symmetric(
          horizontal: AppSize.s6,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: AppTextStyle.j14,
            ),
            Row(
              children: [
                if (text != null)
                  Text(
                    text!,
                    style: AppTextStyle.j14,
                  ),
                const SizedBox(width: AppSize.s4),
                if (hasLeftIcon)
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: AppSize.s6,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
