import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/model/enum/exam_status.dart';
import 'package:ielts_practice_mobile/model/enum/testing.dart';
import 'package:ielts_practice_mobile/model/exam.dart';
import 'package:ielts_practice_mobile/model/training.dart';

part 'library_event.dart';
part 'library_state.dart';
part 'library_bloc.freezed.dart';

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  LibraryBloc()
      : super(const LibraryState(exams: [], testings: [], trainings: [])) {
    on<_Started>(_onStarted);
  }

  FutureOr<void> _onStarted(
    _Started event,
    Emitter<LibraryState> emit,
  ) async {
    final examMock = [
      Exam(
        id: '1',
        name: 'Mock Exam 1',
        status: ExamStatus.approved,
        managerId: '',
      ),
      Exam(
        id: '2',
        name: 'Mock Exam 2',
        status: ExamStatus.approved,
        managerId: '',
      ),
      Exam(
        id: '3',
        name: 'Mock Exam 3',
        status: ExamStatus.approved,
        managerId: '',
      ),
      Exam(
        id: '4',
        name: 'Mock Exam 4',
        status: ExamStatus.approved,
        managerId: '',
      ),
      Exam(
        id: '5',
        name: 'Mock Exam 5',
        status: ExamStatus.approved,
        managerId: '',
      ),
      Exam(
        id: '6',
        name: 'Mock Exam 6',
        status: ExamStatus.approved,
        managerId: '',
      ),
      Exam(
        id: '7',
        name: 'Mock Exam 7',
        status: ExamStatus.approved,
        managerId: '',
      ),
      Exam(
        id: '8',
        name: 'Mock Exam 8',
        status: ExamStatus.approved,
        managerId: '',
      ),
      Exam(
        id: '9',
        name: 'Mock Exam 9',
        status: ExamStatus.approved,
        managerId: '',
      ),
      Exam(
        id: '10',
        name: 'Mock 10',
        status: ExamStatus.approved,
        managerId: '',
      )
    ];

    final testingMock = [
      Testing(
        id: '',
        duration: const Duration(hours: 1),
        date: DateTime(2022, 10, 1, 1, 3, 4),
        userId: '1',
        examId: '1',
      ),
      Testing(
        id: '',
        duration: const Duration(hours: 1, minutes: 10, seconds: 20),
        date: DateTime(2022, 10, 10, 1, 2, 3),
        userId: '1',
        examId: '2',
      ),
    ];

    final trainingMock = <Training>[];

    emit(
      LibraryState(
        trainings: trainingMock,
        exams: examMock,
        testings: testingMock,
      ),
    );
  }
}
