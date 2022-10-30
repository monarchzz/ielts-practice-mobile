import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/training_session.dart';

class TrainingWidget extends StatelessWidget {
  const TrainingWidget({
    super.key,
    required this.trainingSession,
    required this.onTap,
  });

  final TrainingSession trainingSession;
  final void Function(TrainingSession session) onTap;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff402955),
      ),
      padding: const EdgeInsets.only(top: AppSize.s7),
      child: Stack(
        children: [
          Row(
            children: [
              const SizedBox(
                width: AppSize.s8,
              ),
              const Image(image: AssetImage('assets/training_background.png')),
              const SizedBox(
                width: AppSize.s8,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n.trainingCardTitle,
                      style: AppTextStyle.w18,
                    ),
                    const SizedBox(
                      height: AppSize.s4,
                    ),
                    Text(
                      l10n.trainingCardDescription(trainingSession.name),
                      style: AppTextStyle.w14,
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 100,
                      child: Row(
                        children: const [
                          Expanded(
                            child: LinearProgressIndicator(
                              value: 0.3,
                              backgroundColor: AppColor.white,
                              color: AppColor.orange,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '30%',
                            style: TextStyle(
                              color: AppColor.white,
                              fontSize: 10,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppSize.s4,
                horizontal: AppSize.s6,
              ),
              child: ElevatedButton(
                onPressed: () => onTap(trainingSession),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.orange,
                ),
                child: Text(
                  l10n.continueTitle,
                  style: AppTextStyle.w16.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
