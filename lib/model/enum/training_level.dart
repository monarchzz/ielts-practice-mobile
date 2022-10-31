import 'package:freezed_annotation/freezed_annotation.dart';

enum TrainingLevel {
  @JsonValue('Easy')
  easy,

  @JsonValue('Medium')
  medium,

  @JsonValue('Hard')
  hard
}
