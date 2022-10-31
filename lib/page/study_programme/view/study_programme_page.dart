import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ielts_practice_mobile/page/study_programme/bloc/study_programme_bloc.dart';
import 'package:ielts_practice_mobile/page/study_programme/view/study_programme_view.dart';

class StudyProgrammePage extends StatelessWidget {
  const StudyProgrammePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: StudyProgrammeBloc()
        ..add(
          const StudyProgrammeEvent.started(),
        ),
      child: const StudyProgrammeView(),
    );
  }
}
