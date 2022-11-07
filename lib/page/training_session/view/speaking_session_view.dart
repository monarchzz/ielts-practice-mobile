import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/model/enum/training_type.dart';
import 'package:ielts_practice_mobile/page/training_session/widget/session_item_widget.dart';

class SpeakingSessionView extends StatelessWidget {
  const SpeakingSessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s6),
        child: Column(
          children: const [
            SizedBox(
              height: AppSize.s6,
            ),
            SessionItemWidget(
              title: 'Part 1 - Introduction and Interview',
              type: TrainingType.speakingPart1,
            ),
            SessionItemWidget(
              title: 'Part 2 - Individual long turn',
              type: TrainingType.speakingPart2,
            ),
            SessionItemWidget(
              title: 'Part 3 - Two-way discussion',
              type: TrainingType.speakingPart3,
            ),
          ],
        ),
      ),
    );
  }
}
