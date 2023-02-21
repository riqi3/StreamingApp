import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:streaming_app/elements/BlurredShape.dart';

import '../constants.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(-30, 0),
            color: neonPink.withOpacity(.5),
            blurRadius: 30,
            spreadRadius: -30,
          ),
          BoxShadow(
            offset: Offset(30, 0),
            color: neonGreen.withOpacity(.5),
            blurRadius: 30,
            spreadRadius: -30,
          ),
        ],
      ),
      child: OutlineGradientButton(
        onTap: () {
          print('Sign up');
        },
        child: Text(
          'Sign up',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: white,
          ),
        ),
        gradient: LinearGradient(
          colors: [
            neonPink,
            neonGreen,
          ],
        ),
        strokeWidth: 3,
        padding:
            EdgeInsets.symmetric(vertical: 12, horizontal: shapeSizing-40,),
        radius: Radius.circular(25),
      ),
    );
  }
}
