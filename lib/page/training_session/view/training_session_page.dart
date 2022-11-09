import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/training_session.dart';
import 'package:ielts_practice_mobile/page/training_session/view/listening_session_view.dart';
import 'package:ielts_practice_mobile/page/training_session/view/speaking_session_view.dart';

class TrainingSessionPage extends StatelessWidget {
  const TrainingSessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final session =
        ModalRoute.of(context)!.settings.arguments as TrainingSession?;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          session == TrainingSession.listening ? l10n.listening : l10n.speaking,
          style: AppTextStyle.j18,
        ),
        backgroundColor: AppColor.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
          color: Colors.black,
        ),
      ),
      backgroundColor: AppColor.background,
      body: session == TrainingSession.listening
          ? const ListeningSessionView()
          : const SpeakingSessionView(),
    );
  }
}
