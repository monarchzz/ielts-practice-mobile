import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/extension.dart';

class SpeakingPart2Instruction extends StatelessWidget {
  const SpeakingPart2Instruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.s8,
        vertical: AppSize.s2,
      ),
      height: 400,
      child: Column(
        children: [
          Row(
            children: [
              const Spacer(),
              IconButton(
                onPressed: () => getIt.navigator.pop(),
                icon: const Icon(Icons.close),
              )
            ],
          ),
          const Text(
            'Instructions and advice',
            style: TextStyle(
              color: AppColor.orange,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: AppSize.s6,
          ),
          const Text(
            // ignore: lines_longer_than_80_chars
            'On Practice: You will record your response using your microphone.\n\nOn Exam Day: The examiner will give you a “task card” asking you to talk about a specific subject and to include certain points. You have 1 minute to prepare a talk of about 2 minutes.\n\nTip: Try not to speak too fast or too slow; either way, you would be penalized. If you are unable to gauge your speech speed, base it on that of the examiner.',
            style: TextStyle(
              fontSize: 14,
              color: AppColor.jetBlack,
            ),
          ),
        ],
      ),
    );
  }
}
