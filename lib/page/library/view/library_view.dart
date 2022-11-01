import 'package:flutter/material.dart';
import 'package:ielts_practice_mobile/common/constant/app_color.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/common/constant/app_text_style.dart';
import 'package:ielts_practice_mobile/l10n/l10n.dart';
import 'package:ielts_practice_mobile/page/library/view/exam_view.dart';
import 'package:ielts_practice_mobile/page/library/view/training_view.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class LibraryView extends StatelessWidget {
  const LibraryView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSize.s8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  l10n.library,
                  style: AppTextStyle.j24b,
                )
              ],
            ),
          ),
        ),
        DefaultTabController(
          length: 2,
          child: Expanded(
            child: Column(
              children: [
                Material(
                  child: Row(
                    children: [
                      Expanded(
                        child: TabBar(
                          indicatorColor: Colors.green,
                          tabs: [
                            Tab(
                              text: l10n.allTraining,
                            ),
                            Tab(
                              text: l10n.allExam,
                            ),
                          ],
                          labelColor: AppColor.purple,
                          indicator: MaterialIndicator(
                            height: 2,
                            horizontalPadding: 30,
                            color: AppColor.purple,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3,
                      )
                    ],
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: <Widget>[
                      TrainingView(),
                      ExamView(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
