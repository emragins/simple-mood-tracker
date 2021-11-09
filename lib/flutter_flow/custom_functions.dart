import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import '../../auth/auth_util.dart';

List<int> getMoodOptions() {
  return [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
}

MoodRecordsRecord newMoodRecord() {
  return MoodRecordsRecord();
}

int colorFromValue() {
  return 100;
}
