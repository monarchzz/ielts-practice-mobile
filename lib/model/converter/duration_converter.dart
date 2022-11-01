import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class DurationConverter implements JsonConverter<Duration, String> {
  const DurationConverter();
  @override
  Duration fromJson(String json) {
    final items = json.split(':');
    if (items.length != 3) return Duration.zero;
    return Duration(
      hours: int.parse(items[0]),
      minutes: int.parse(items[1]),
      seconds: int.parse(items[2]),
    );
  }

  @override
  String toJson(Duration duration) {
    final f = NumberFormat('00', 'en_US');
    final hours = duration.inHours;
    final minutes = duration.inMinutes - duration.inHours * 60;
    final seconds = duration.inSeconds - duration.inMinutes * 60;
    final result =
        '${f.format(hours)}:${f.format(minutes)}:${f.format(seconds)}';
    return result;
  }
}
