import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/extension.dart';

class ListeningSection3Instruction extends StatelessWidget {
  const ListeningSection3Instruction({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.s8,
        vertical: AppSize.s2,
      ),
      height: 350,
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
            'On Practice: This part consists of a conversation between 2 and 4 speakers, in an academic setting, for 5 to 7 minutes. You will have to respond to 10 comprehension questions. \n\nOn Exam Day: You can only listen to the audios once.\n\nTip: Spelling counts! You must use correct spelling when answering the questions in this section.',
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
