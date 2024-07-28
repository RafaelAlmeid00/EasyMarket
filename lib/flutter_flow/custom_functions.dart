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

String? newCustomFunction() {
  DateTime now = DateTime.now();
  DateTime startOfDay = DateTime(now.year, now.month, now.day);

  // Return the timestamp in milliseconds since epoch
  return startOfDay.millisecondsSinceEpoch.toString();
}

DateTime newCustomFunction2() {
  DateTime now = DateTime.now();
  DateTime startOfDay = DateTime(now.year, now.month, now.day);

  return startOfDay;
}
