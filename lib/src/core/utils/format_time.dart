import 'package:intl/intl.dart';

String formatTime(DateTime? time) {
  if (time == null) return "N/A";
  return DateFormat('HH:mm').format(time);
}
