import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/common/widget/level_tag_widget.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/model/enum/testing.dart';
import 'package:ielts_practice_mobile/model/exam.dart';
import 'package:intl/intl.dart';

class ExamItemWidget extends StatelessWidget {
  const ExamItemWidget({
    super.key,
    required this.onTapButton,
    required this.exam,
    this.testing,
  });

  final void Function(Exam exam) onTapButton;
  final Exam exam;
  final Testing? testing;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSize.s2),
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: AppSize.s6),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: const Color(0xff09b9b7),
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.all(AppSize.s4),
                child: const Image(
                  image: AssetImage('assets/exam.webp'),
                ),
              ),
              const SizedBox(
                width: AppSize.s6,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(exam.name),
                  const SizedBox(
                    height: AppSize.s2,
                  ),
                  if (testing != null)
                    Text(
                      l10n.startedOn(
                        DateFormat.yMd(Intl.getCurrentLocale())
                            .format(testing!.date),
                        DateFormat.Hm(Intl.getCurrentLocale())
                            .format(testing!.date),
                      ),
                      style: AppTextStyle.s10,
                    ),
                  const SizedBox(
                    height: AppSize.s2,
                  ),
                  const LevelTagWidget(level: 'Medium')
                ],
              ),
              const Spacer(),
              if (testing != null) ...[
                const Text(
                  '5/9',
                  style: AppTextStyle.s13,
                ),
                const SizedBox(
                  width: AppSize.s2,
                ),
                const Divider(),
                const SizedBox(
                  width: AppSize.s2,
                ),
              ],
              ElevatedButton(
                onPressed: () => onTapButton(exam),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.orange,
                  side: const BorderSide(
                    color: AppColor.orange,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  testing == null ? l10n.start : l10n.tryAgain,
                  style: AppTextStyle.w12b,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
