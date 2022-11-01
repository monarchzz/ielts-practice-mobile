import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/extension.dart';

class ListeningInstructionsWidget extends StatelessWidget {
  const ListeningInstructionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSize.s8,
        vertical: AppSize.s2,
      ),
      height: 580,
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
            'The Listening section of the IELTS General will take 30 minutes. This section consists of 40 questions. Each question has only one correct response.\n\nThe IELTS Listening is composed of 4 sections of increasing difficulty, each corresponding to 10 questions and 1 audio extract:\n\nSection 1 – Short Conversation\nSection 2 – Monologue \nSection 3 – Long Conversation\nSection 4 – Lecture \n\nThe IELTS Listening exercises evaluate your ability to understand conversations using various English accents about both academic and everyday topics.\n\nPay attention to the guidelines as there are various question types.',
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
