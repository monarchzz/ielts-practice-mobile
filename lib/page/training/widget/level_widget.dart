import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/training_level.dart';

class LevelWidget extends StatelessWidget {
  const LevelWidget({super.key, required this.level});

  final TrainingLevel level;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      height: 30,
      width: 80,
      decoration: BoxDecoration(
        color: AppColor.gainsboro,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          level.getText(l10n),
          style: AppTextStyle.j14b,
        ),
      ),
    );
  }
}
