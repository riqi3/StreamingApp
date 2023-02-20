import 'package:flutter/material.dart';

import '../constants.dart';
import '../elements/BlurredShape.dart';
import 'IntroImage.dart';
import 'SignUpButton.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.only(top: shapeSizing / 2),
        child: Column(
          children: [
            Stack(
              fit: StackFit.loose,
              children: [
                BlurredShape(
                  shapeWidth: 120,
                  shapeHeight: 120,
                  shapeColor: neonPink,
                  leftPadding: 20,
                  rightPadding: 0,
                  topPadding: 0,
                  bottomPadding: 0,
                ),
                BlurredShape(
                  shapeWidth: 200,
                  shapeHeight: 200,
                  shapeColor: neonGreen,
                  leftPadding: 230,
                  rightPadding: 0,
                  topPadding: 120, 
                  bottomPadding: 0,
                ),
                IntroImage(),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: defaultPadding / 3),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: defaultPadding),
                    child: Text(
                      'Watch movies in Virtual Reality',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: white,
                        fontSize: titleSize + 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: defaultPadding),
                    child: Text(
                      'Download and watch offline wherever you are',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: grey,
                          fontSize: subtitleSize + 4,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: defaultPadding),
                    child: SignUpButton(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
