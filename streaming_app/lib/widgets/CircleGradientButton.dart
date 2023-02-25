import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../constants.dart';

class CircleGradientButton extends StatelessWidget {
  const CircleGradientButton({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RotationTransition(
        turns: new AlwaysStoppedAnimation(35 / 360),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
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
            borderRadius: BorderRadius.circular(30),
          ),
          child: RotationTransition(
            turns: new AlwaysStoppedAnimation(325 / 360),
            child: Image.asset(
              image,
            ),
          ),
        ),
      ),
    );
  }
}
