import 'package:flutter/material.dart';

import '../constants.dart';

class BlurredShape extends StatelessWidget {
  const BlurredShape({
    super.key,
    required this.shapeWidth,
    required this.shapeHeight,
    required this.shapeColor,
    required this.leftPadding,
    required this.rightPadding,
    required this.topPadding,
    required this.bottomPadding,
  });

  final double shapeWidth, shapeHeight, leftPadding, rightPadding, topPadding, bottomPadding;
  final Color shapeColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: leftPadding,
        top: topPadding,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(500.0),
        child: Container(
          width: shapeWidth,
          height: shapeHeight,
          decoration: BoxDecoration(
            color: shapeColor,
          ),
        ),
      ),
    );
  }
}

