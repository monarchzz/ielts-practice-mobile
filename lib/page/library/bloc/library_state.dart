part of 'library_bloc.dart';

@freezed
class LibraryState with _$LibraryState {
  const factory LibraryState({
    required List<Training> trainings,
    required List<Exam> exams,
    required List<Testing> testings,
  }) = _LibraryState;
}
