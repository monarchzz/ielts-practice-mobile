import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/training_session.dart';

class TrainingItemWidget extends StatelessWidget {
  const TrainingItemWidget({
    super.key,
    required this.trainingSession,
    required this.onTap,
    required this.onViewInstructions,
  });

  final TrainingSession trainingSession;
  final void Function(TrainingSession trainingSession) onTap;
  final void Function(TrainingSession trainingSession) onViewInstructions;

  Color _getColor() {
    switch (trainingSession) {
      case TrainingSession.listening:
        return const Color(0xff5c89e7);
      case TrainingSession.speaking:
        return const Color(0xff83d7be);
    }
  }

  AssetImage _getImage() {
    switch (trainingSession) {
      case TrainingSession.listening:
        return const AssetImage('assets/listening.webp');
      case TrainingSession.speaking:
        return const AssetImage('assets/speaking.webp');
    }
  }

  String _getTitle(AppLocalizations l10n) {
    switch (trainingSession) {
      case TrainingSession.listening:
        return l10n.listening;
      case TrainingSession.speaking:
        return l10n.speaking;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Card(
      color: _getColor(),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        height: 170,
        width: double.infinity,
        child: Stack(
          children: [
            InkWell(
              onTap: () => onTap(trainingSession),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: AppSize.s6,
                  horizontal: AppSize.s8,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      height: 80,
                      width: 80,
                      child: Image(
                        image: _getImage(),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Text(
                          _getTitle(l10n),
                          style: AppTextStyle.w24,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: GestureDetector(
                onTap: () => onViewInstructions(trainingSession),
                child: Padding(
                  padding: const EdgeInsets.all(AppSize.s6),
                  child: Text(
                    l10n.viewInstruction,
                    style: AppTextStyle.w14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
