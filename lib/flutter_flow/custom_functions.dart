import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

DateTimeRange? getDayRange(DateTime selectedDate) {
  final start =
      DateTime(selectedDate.year, selectedDate.month, selectedDate.day);
  final end = start.add(Duration(days: 1));
  return DateTimeRange(start: start, end: end);
}

DateTimeRange? getThisWeekRange() {
  final now = DateTime.now();
  final startOfWeek =
      DateTime(now.year, now.month, now.day - (now.weekday - 1));
  final endOfWeek = DateTime(
      startOfWeek.year, startOfWeek.month, startOfWeek.day + 7, 0, 0, 0);
  return DateTimeRange(start: startOfWeek, end: endOfWeek);
}
