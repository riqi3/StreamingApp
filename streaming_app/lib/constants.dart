import 'package:flutter/material.dart';

const neonGreen = Color(0xFF09fbd3);
const neonBlue = Color(0xFF08f7f3);
const neonPink = Color(0xFFfe53bb);

const white = Color(0xFFffffff);
const grey = Color.fromARGB(255, 167, 167, 167);

const bgColor = Color(0xFF19191b);
const ratingColor = Color(0xFFf2a33a);

const double shapeSizing = 100.0;
const double fontSize = 32.0;
const double defaultPadding = 32.0;

const double titleSize = 32.0;
const double subtitleSize = 16.0;

final kGradientBoxDecoration = BoxDecoration(
  gradient: LinearGradient(colors: [Colors.black, Colors.redAccent]),
  border: Border.all(
    color: Colors.green,
  ),
  borderRadius: BorderRadius.circular(32),
);