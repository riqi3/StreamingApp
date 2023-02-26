import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../constants.dart';

class CircleGradientButton extends StatelessWidget {
  const CircleGradientButton({
    super.key,
    required this.image,
    required this.width,
    required this.height,
    required this.scale,
  });
  final String image;
  final double width, height, scale;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RotationTransition(
        turns: new AlwaysStoppedAnimation(35 / 360),
        child: Container(
          height: width,
          width: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 92, 92, 92),
                Color.fromARGB(255, 48, 48, 48),
              ],
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                color: white.withOpacity(.1),
                blurRadius: 7,
                spreadRadius: 7,
              ),
            ],
            border: GradientBoxBorder(
              gradient: LinearGradient(
                colors: [
                  neonPink,
                  neonGreen,
                ],
              ),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(150),
          ),
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(325 / 360),
            child: Image.asset(
              image,
              scale: this.scale,
            ),
          ),
        ),
      ),
    );
  }
}
