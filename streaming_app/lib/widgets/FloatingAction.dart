import 'package:flutter/material.dart';

import 'package:gradient_borders/gradient_borders.dart';
import '../constants.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0,),
      child: FloatingActionButton(
        onPressed: () {
          print('object3');
        },
        backgroundColor: bgColor,
        child: RotationTransition(
          turns: new AlwaysStoppedAnimation(35 / 360),
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 0),
                  color: white.withOpacity(.09),
                  blurRadius: 5,
                  spreadRadius: 5,
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
                'assets/icons/add.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
