import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/model/enum/training_level.dart';
import 'package:ielts_practice_mobile/model/enum/training_session.dart';
import 'package:ielts_practice_mobile/model/enum/training_status.dart';
import 'package:ielts_practice_mobile/model/enum/training_type.dart';
import 'package:ielts_practice_mobile/model/training.dart';

part 'training_event.dart';
part 'training_state.dart';
part 'training_bloc.freezed.dart';

class TrainingBloc extends Bloc<TrainingEvent, TrainingState> {
  TrainingBloc() : super(const _Initial()) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<TrainingState> emit,
  ) async {
    final trainings = [
      Training(
        id: '1',
        name: 'Training 1',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.easy,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
      Training(
        id: '1',
        name: 'Training 2',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.easy,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
      Training(
        id: '1',
        name: 'Training 3',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.medium,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
      Training(
        id: '1',
        name: 'Training 4',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.medium,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
      Training(
        id: '1',
        name: 'Training 5',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.hard,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
      Training(
        id: '1',
        name: 'Training 6',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.hard,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
      Training(
        id: '1',
        name: 'Training 7',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.hard,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
      Training(
        id: '1',
        name: 'Training 8',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.hard,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
      Training(
        id: '1',
        name: 'Training 9',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.hard,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
      Training(
        id: '1',
        name: 'Training 10',
        trainingSession: TrainingSession.listening,
        type: event.type,
        level: TrainingLevel.hard,
        status: TrainingStatus.approved,
        forExamOnly: false,
        managerId: '1',
      ),
    ];

    emit(
      TrainingState.success(
        type: event.type,
        trainings: trainings,
      ),
    );
  }
}
