import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/common/constant/app_size.dart';
import 'package:ielts_practice_mobile/model/enum/testing.dart';
import 'package:ielts_practice_mobile/model/exam.dart';
import 'package:ielts_practice_mobile/page/library/bloc/library_bloc.dart';
import 'package:ielts_practice_mobile/page/library/widget/exam_item_widget.dart';

class ExamView extends StatelessWidget {
  const ExamView({super.key});

  Testing? _findTesting(List<Testing> testing, Exam exam) {
    final index = testing.indexWhere((element) => element.examId == exam.id);
    if (index >= 0) return testing[index];
    return null;
  }

  void _handleItemTap(Exam exam) {}

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(AppSize.s4),
        child: BlocBuilder<LibraryBloc, LibraryState>(
          buildWhen: (previous, current) {
            return !listEquals(previous.exams, current.exams);
          },
          builder: (context, state) {
            final exams = state.exams;
            final testing = state.testings;
            return Column(
              children: [
                const SizedBox(
                  height: AppSize.s4,
                ),
                ...exams.map(
                  (e) => ExamItemWidget(
                    exam: e,
                    testing: _findTesting(testing, e),
                    onTapButton: _handleItemTap,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
