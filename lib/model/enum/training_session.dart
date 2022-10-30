import 'package:freezed_annotation/freezed_annotation.dart';

enum TrainingSession {
  @JsonValue('Listening')
  listening,
  @JsonValue('Speaking')
  speaking
}
