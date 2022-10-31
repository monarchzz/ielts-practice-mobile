import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/model/enum/study_programme_type.dart';
import 'package:ielts_practice_mobile/model/study_programme.dart';

part 'study_programme_event.dart';
part 'study_programme_state.dart';
part 'study_programme_bloc.freezed.dart';

class StudyProgrammeBloc
    extends Bloc<StudyProgrammeEvent, StudyProgrammeState> {
  StudyProgrammeBloc() : super(const StudyProgrammeState(studyProgrammes: [])) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<StudyProgrammeState> emit,
  ) {
    final mock = <StudyProgramme>[
      StudyProgramme(
        id: '',
        name: 'IELTS General Speaking',
        type: StudyProgrammeType.speakingSection,
      ),
      StudyProgramme(
        id: '',
        name: 'IELTS General Listening',
        type: StudyProgrammeType.listeningSection,
      ),
      StudyProgramme(
        id: '',
        name: 'Target study programme 4 to 6 points 1',
        type: StudyProgrammeType.target4To6,
      ),
      StudyProgramme(
        id: '',
        name: 'Target study programme 6 to 8 points 1',
        type: StudyProgrammeType.target6To8,
      ),
      StudyProgramme(
        id: '',
        name: 'Target study programme 8 to 9 points 1',
        type: StudyProgrammeType.target8To9,
      )
    ];

    emit(StudyProgrammeState(studyProgrammes: mock));
  }
}
