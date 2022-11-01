import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';

class LevelTagWidget extends StatelessWidget {
  const LevelTagWidget({super.key, required this.level});

  final String level;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColor.gainsboro,
      ),
      child: Center(
        child: Text(
          level,
          style: AppTextStyle.p10,
        ),
      ),
    );
  }
}
