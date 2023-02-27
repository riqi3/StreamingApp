import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../elements/BlurredShape.dart';
import 'IntroImage.dart';
import 'SignUpButton.dart';

class IntroContent extends StatelessWidget {
  const IntroContent({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: ClipRect(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              fit: StackFit.loose,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: BlurredShape(
                    shapeWidth: 120,
                    shapeHeight: 120,
                    shapeColor: neonPink,
                    leftPadding: 0,
                    rightPadding: 220,
                    topPadding: 0,
                    bottomPadding: 0,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: BlurredShape(
                    shapeWidth: 200,
                    shapeHeight: 200,
                    shapeColor: neonGreen,
                    leftPadding: 230,
                    rightPadding: 0,
                    topPadding: 120,
                    bottomPadding: 0,
                  ),
                ),
                BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 60.0,
                      sigmaY: 60.0,
                    ),
                    child: IntroImage()),
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
                      title,
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
                      subtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: grey,
                          fontSize: subtitleSize + 4,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: defaultPadding),
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
