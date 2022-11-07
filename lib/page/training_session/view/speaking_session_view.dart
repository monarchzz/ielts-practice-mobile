import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/training_type.dart';
import 'package:ielts_practice_mobile/page/training_session/widget/session_item_widget.dart';

class SpeakingSessionView extends StatelessWidget {
  const SpeakingSessionView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSize.s6),
        child: Column(
          children: [
            const SizedBox(
              height: AppSize.s6,
            ),
            SessionItemWidget(
              title: l10n.speakingPart1,
              type: TrainingType.speakingPart1,
            ),
            SessionItemWidget(
              title: l10n.speakingPart2,
              type: TrainingType.speakingPart2,
            ),
            SessionItemWidget(
              title: l10n.speakingPart3,
              type: TrainingType.speakingPart3,
            ),
          ],
        ),
      ),
    );
  }
}
