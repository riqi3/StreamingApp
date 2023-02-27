import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:streaming_app/constants.dart';

class IntroImage extends StatelessWidget {
  const IntroImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: RotationTransition(
        turns: new AlwaysStoppedAnimation(35 / 360),
        child: Container(
          decoration: BoxDecoration(
            border: GradientBoxBorder(
              gradient: LinearGradient(
                colors: [
                  neonPink,
                  bgColor.withOpacity(.1),
                  bgColor.withOpacity(.1),
                  neonGreen,
                ],
              ),
              width: 3,
            ),
            borderRadius: BorderRadius.circular(200),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: Container(
              width: 275,
              height: 275,
              decoration: BoxDecoration(
                color: Colors.transparent,
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 120,
                    top: 10,
                    bottom: 30,
                  ),
                  child: RotationTransition(
                    turns: new AlwaysStoppedAnimation(325 / 360),
                    child: Image(
                      image: AssetImage(
                        'assets/images/others/image 81.png',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
