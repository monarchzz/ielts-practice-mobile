import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/model/enum/training_type.dart';
import 'package:ielts_practice_mobile/page/training_session/widget/session_item_widget.dart';

class ListeningSessionView extends StatelessWidget {
  const ListeningSessionView({super.key});

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
              title: 'Section 1 - Short Conversation',
              type: TrainingType.listeningSection1,
            ),
            SessionItemWidget(
              title: 'Section 2 - Monologue',
              type: TrainingType.listeningSection2,
            ),
            SessionItemWidget(
              title: 'Section 3 - Long Conversation',
              type: TrainingType.listeningSection3,
            ),
            SessionItemWidget(
              title: 'Section 4 - Lecture',
              type: TrainingType.listeningSection4,
            )
          ],
        ),
      ),
    );
  }
}
