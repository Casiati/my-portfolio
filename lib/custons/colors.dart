import 'package:flutter/material.dart';

class CustomColors {
  Color background = const Color(0xFF2C2C2C);
  Color border = const Color.fromARGB(30, 255, 255, 255);
  Color font = const Color(0xFFFFFFFF);
}

const gradientColors = [
  Color(0xFFf47777),
   Color(0xFF777cf4),
];

var gradient = const LinearGradient(
  colors: gradientColors,
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);
