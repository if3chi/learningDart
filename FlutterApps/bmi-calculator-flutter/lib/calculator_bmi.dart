import 'dart:math';
import 'package:bmi_calculator/widgets/constants.dart';
import 'package:flutter/cupertino.dart';

class CalculateBMI {
  final int height;
  final int weight;
  double _bmi;

  CalculateBMI({this.height, this.weight});

  String calc() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDesc() {
    if (_bmi > 25) {
      return 'Goto to the GYM, there are delicious weight packs waiting for you.';
    } else if (_bmi > 18.5) {
      return 'Good! job your BMI is normal.';
    } else {
      return 'You really, really, need plenty of food.';
    }
  }

  Color getColor() {
    if (_bmi > 25) {
      return kDanger;
    } else if (_bmi > 18.5) {
      return kNormal;
    } else {
      return kWarning;
    }
  }
}
