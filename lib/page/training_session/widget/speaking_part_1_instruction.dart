import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/extension.dart';

class SpeakingPart1Instruction extends StatelessWidget {
  const SpeakingPart1Instruction({super.key});

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
            'On Practice: You will record your response using your microphone.\n\nOn Exam Day: The examiner will ask you general questions (family, work or studies, hobbies, interests) for 4 to 5 minutes.\n\nTip: Try to reduce the use of certain mannerisms while speaking, which is more difficult if English is not your native language. The most famous one is "uh," which can be avoided by having a short silence instead. This gives a better impression.',
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
