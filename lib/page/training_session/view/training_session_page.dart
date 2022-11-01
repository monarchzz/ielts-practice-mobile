import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/widget/page_container.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/training_session.dart';

class TrainingSessionPage extends StatelessWidget {
  const TrainingSessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final session =
        ModalRoute.of(context)!.settings.arguments as TrainingSession?;

    return session == null
        ? Container()
        : Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          l10n.listening,
                          style: AppTextStyle.j18b,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
