import 'package:freezed_annotation/freezed_annotation.dart';

enum TrainingStatus {
  @JsonValue('Pending')
  pending,

  @JsonValue('Approved')
  approved,

  @JsonValue('Cancelled')
  cancelled
}
