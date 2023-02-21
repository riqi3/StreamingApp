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
      padding: const EdgeInsets.only(top: 40.0),
      child: FloatingActionButton(
        onPressed: () {
          print('object3');
        },
        backgroundColor: Color.fromARGB(255, 107, 107, 107),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 0),
                color: white.withOpacity(.2),
                blurRadius: 10,
                spreadRadius: 10,
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
          child: Image.asset(
            'assets/icons/add.png',
          ),
        ),
      ),
    );
  }
}
