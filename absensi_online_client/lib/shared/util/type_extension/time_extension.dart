import 'package:flutter/material.dart';

extension TimeOfDayExtension on TimeOfDay {
  String get kkmm {
    final hour = this.hour.toString().padLeft(2, '0');
    final time = minute.toString().padLeft(2, '0');
    return '$hour:$time';
  }
}

extension TimeOfDayStringExtension on String {
  TimeOfDay? get timeOfDay {
    var arr = this.split(":");
    int hour = int.parse(arr[0]);
    int minute = int.parse(arr[1]);
    return TimeOfDay(hour: hour, minute: minute);
  }
}
