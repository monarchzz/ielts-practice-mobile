import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/training_type.dart';

import 'package:ielts_practice_mobile/page/training_session/widget/widget.dart';

class SessionItemWidget extends StatelessWidget {
  const SessionItemWidget({
    super.key,
    required this.type,
    required this.title,
  });

  final TrainingType type;
  final String title;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSize.s2),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: _handleCardTap,
          child: SizedBox(
            width: double.infinity,
            height: 120,
            child: Padding(
              padding: const EdgeInsets.all(AppSize.s6),
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        title,
                        style: AppTextStyle.j16,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: AppSize.s2,
                  ),
                  GestureDetector(
                    onTap: () => _handleViewInstructionsTap(context),
                    child: Text(
                      l10n.viewInstruction,
                      style: AppTextStyle.s14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleViewInstructionsTap(BuildContext context) {
    switch (type) {
      case TrainingType.listeningSection1:
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => const Dialog(
            child: ListeningSection1Instruction(),
          ),
        );
        break;
      case TrainingType.listeningSection2:
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => const Dialog(
            child: ListeningSection2Instruction(),
          ),
        );
        break;
      case TrainingType.listeningSection3:
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => const Dialog(
            child: ListeningSection3Instruction(),
          ),
        );
        break;
      case TrainingType.listeningSection4:
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => const Dialog(
            child: ListeningSection4Instruction(),
          ),
        );
        break;
      case TrainingType.speakingPart1:
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => const Dialog(
            child: SpeakingPart1Instruction(),
          ),
        );
        break;
      case TrainingType.speakingPart2:
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => const Dialog(
            child: SpeakingPart2Instruction(),
          ),
        );
        break;
      case TrainingType.speakingPart3:
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => const Dialog(
            child: SpeakingPart3Instruction(),
          ),
        );
        break;
    }
  }

  void _handleCardTap() {
    print('tap');
  }
}
