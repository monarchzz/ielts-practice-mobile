import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/app/di.dart';
import 'package:ielts_practice_mobile/app/route.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/extension.dart';
import 'package:ielts_practice_mobile/model/enum/training_session.dart';
import 'package:ielts_practice_mobile/page/library/widget/listening_instruction_widget.dart';
import 'package:ielts_practice_mobile/page/library/widget/speaking_instruction_widget.dart';
import 'package:ielts_practice_mobile/page/library/widget/training_item_widget.dart';

class TrainingView extends StatelessWidget {
  const TrainingView({super.key});

  void _handleTrainingItemTap(
    TrainingSession trainingSession,
  ) {
    getIt.navigator
        .pushNamed(RouteName.trainingSession, arguments: trainingSession);
  }

  void _handleViewInstructions(
    BuildContext context,
    TrainingSession trainingSession,
  ) {
    switch (trainingSession) {
      case TrainingSession.listening:
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => const Dialog(
            child: ListeningInstructionsWidget(),
          ),
        );
        break;
      case TrainingSession.speaking:
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => const Dialog(
            child: SpeakingInstructionsWidget(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSize.s4),
      child: Column(
        children: [
          const SizedBox(
            height: AppSize.s8,
          ),
          TrainingItemWidget(
            trainingSession: TrainingSession.listening,
            onTap: _handleTrainingItemTap,
            onViewInstructions: (trainingSession) =>
                _handleViewInstructions(context, trainingSession),
          ),
          const SizedBox(
            height: AppSize.s6,
          ),
          TrainingItemWidget(
            trainingSession: TrainingSession.speaking,
            onTap: _handleTrainingItemTap,
            onViewInstructions: (trainingSession) =>
                _handleViewInstructions(context, trainingSession),
          )
        ],
      ),
    );
  }
}
