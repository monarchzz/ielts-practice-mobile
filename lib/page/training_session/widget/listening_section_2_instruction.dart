import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/extension.dart';

class ListeningSection2Instruction extends StatelessWidget {
  const ListeningSection2Instruction({super.key});

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
            'On Practice: You will need to respond to 10 comprehension questions corresponding to an audio of 5 to 7 minutes about a general topic that you could hear in an English-speaking country.\n\nOn Exam Day: You can only listen to the audios once.\n\nTip: Familiarize yourself with the British accent! Even though different types of accents are used in the IELTS (Canadian, Australian), the main accent used is British, along with the vocabulary employed.',
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
