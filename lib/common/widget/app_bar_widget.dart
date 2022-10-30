import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Container(
        margin: const EdgeInsets.only(bottom: 1),
        padding: const EdgeInsets.symmetric(horizontal: AppSize.s6),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.gainsboro,
              offset: Offset(0, 1),
              blurRadius: 1,
            ),
          ],
          color: AppColor.white,
        ),
        child: Row(
          children: [
            Text(
              title,
              style: AppTextStyle.j16,
            )
          ],
        ),
      ),
    );
  }
}
