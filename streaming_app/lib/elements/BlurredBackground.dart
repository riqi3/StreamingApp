import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';
import 'BlurredShape.dart';

class BlurredBackground extends StatelessWidget {
  const BlurredBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: BlurredShape(
                    shapeWidth: 100,
                    shapeHeight: 100,
                    shapeColor: neonGreen,
                    leftPadding: 0,
                    rightPadding: 0,
                    topPadding: 0,
                    bottomPadding: 0,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: BlurredShape(
                    shapeWidth: 100,
                    shapeHeight: 100,
                    shapeColor: neonPink,
                    leftPadding: 0,
                    rightPadding: 0,
                    topPadding: 0,
                    bottomPadding: 0,
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: BlurredShape(
                    shapeWidth: 100,
                    shapeHeight: 100,
                    shapeColor: neonGreen,
                    leftPadding: 0,
                    rightPadding: 0,
                    topPadding: 0,
                    bottomPadding: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 90.0,
            sigmaY: 90.0,
          ),
          child: Text('')
        ),
      ],
    );
  }
}
