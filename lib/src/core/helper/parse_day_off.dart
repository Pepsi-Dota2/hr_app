List<String> parseDayOff(dynamic value) {
  if (value == null || value is! String || value.isEmpty) return [];
  return value.split(',').map((e) => e.trim()).toList();
}

String dayOffToString(List<String> list) => list.join(',');
