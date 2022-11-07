import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/extension.dart';

class SpeakingPart3Instruction extends StatelessWidget {
  const SpeakingPart3Instruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.s8,
        vertical: AppSize.s2,
      ),
      height: 430,
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
            'On Practice: You will record your response using your microphone.\n\nOn Exam Day: You will speak with the examiner about a more abstract and general problem, linked to section 2 and lasting 4 to 5 minutes.\n\nTip: Don\'t be afraid to ask the examiner to repeat the question if you did not understand the first time. A couple of ways you could ask the proctor to repeat his/herself are: "Could you repeat your statement, please?" or "I beg your pardon, but I did not understand what you\'ve just said." This can also buy you some time if you don\'t have any ideas right away!',
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
