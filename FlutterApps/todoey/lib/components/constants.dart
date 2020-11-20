import 'package:flutter/material.dart';

// Colors

const Color kRedRose = Color(0xffb31839);
const Color kRedRoseLight = Color(0xffb90830);

double kConRadius = 50.0;

TextStyle kHeading = TextStyle(
  color: Colors.white,
  fontSize: 60,
  fontWeight: FontWeight.w700,
);

BoxDecoration kBoxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(kConRadius),
    topRight: Radius.circular(kConRadius),
  ),
);
