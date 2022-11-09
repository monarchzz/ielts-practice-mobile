import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/training.dart';
import 'package:ielts_practice_mobile/page/training/widget/level_widget.dart';

class TrainingItemWidget extends StatelessWidget {
  const TrainingItemWidget({super.key, required this.training});

  final Training training;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      color: AppColor.white,
      height: 100,
      padding: const EdgeInsets.symmetric(
        vertical: AppSize.s7,
        horizontal: AppSize.s2,
      ),
      child: Row(
        children: [
          Column(
            children: [
              LevelWidget(level: training.level),
            ],
          ),
          const SizedBox(
            width: AppSize.s4,
          ),
          Column(
            children: [
              Text(
                training.name,
                style: AppTextStyle.j16,
              ),
              const SizedBox(
                height: AppSize.s2,
              ),
              const Text(
                '8/10',
                style: AppTextStyle.j14,
              ),
            ],
          ),
          const Spacer(),
          Text(
            l10n.viewCorrection,
            style: AppTextStyle.j13,
          ),
          const SizedBox(
            width: AppSize.s4,
          ),
          OutlinedButton(
            onPressed: () => _handleTryAgainButton(context),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                color: AppColor.orange,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              foregroundColor: AppColor.orange,
            ),
            child: Text(
              l10n.tryAgain,
              style: AppTextStyle.o14b,
            ),
          ),
          // ElevatedButton(
          //   onPressed: () => _handleStartButton(context),
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: AppColor.orange,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(20),
          //     ),
          //   ),
          //   child: Text(
          //     l10n.start,
          //     style: AppTextStyle.w14b,
          //   ),
          // ),
        ],
      ),
    );
  }

  // void _handleStartButton(BuildContext context) {}

  void _handleTryAgainButton(BuildContext context) {}
}
