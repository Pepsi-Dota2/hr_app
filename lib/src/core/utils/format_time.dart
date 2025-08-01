import 'package:intl/intl.dart';

String formatTime(String? isoTime) {
  if (isoTime == null || isoTime.isEmpty) return '-';
  try {
    final dateTime = DateTime.parse(isoTime).toLocal();
    return DateFormat('hh:mm a').format(dateTime);
  } catch (e) {
    return '-';
  }
}
