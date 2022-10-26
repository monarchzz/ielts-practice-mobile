import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_item.freezed.dart';
part 'error_item.g.dart';

@freezed
class ErrorItem with _$ErrorItem {
  factory ErrorItem({
    required String code,
    required String description,
  }) = _ErrorItem;

  factory ErrorItem.fromJson(Map<String, dynamic> json) =>
      _$ErrorItemFromJson(json);
}
