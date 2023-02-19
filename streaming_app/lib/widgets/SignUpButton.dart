import 'package:flutter/material.dart';

import 'package:outline_gradient_button/outline_gradient_button.dart';

import '../constants.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlineGradientButton(
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
            colors: [neonPink, neonGreen],
          ),
          strokeWidth: 4,
          padding: EdgeInsets.symmetric(
              vertical: 12, horizontal: defaultPadding + 16),
          radius: Radius.circular(25),
        ),
      ],
    );
  }
}
