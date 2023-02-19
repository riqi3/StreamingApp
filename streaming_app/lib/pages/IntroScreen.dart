import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:streaming_app/constants.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: bgColor,
        scrollPhysics: BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: Padding(
              padding: const EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
              ),
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
            body: 'Download and watch offline wherever you are',
            decoration: PageDecoration(
              bodyPadding: EdgeInsets.only(
                left: defaultPadding,
                right: defaultPadding,
              ),
              bodyTextStyle: TextStyle(
                  color: grey,
                  fontSize: subtitleSize + 4,
                  fontWeight: FontWeight.w300),
            ),
            image: Stack(
              fit: StackFit.loose,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    right: 200,
                    bottom: 100,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(500.0),
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: neonPink,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 230,
                    top: 120,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(500.0),
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          color: neonGreen,
                        ),
                      ),
                    ),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 60.0,
                    sigmaY: 60.0,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(500.0),
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
                              left: 30,
                              top: 30,
                            ),
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
              ],
            ),
          ),
        ],
        onDone: () {
          Navigator.pushNamed(context, 'home');
        },
        onSkip: () {
          Navigator.pushNamed(context, 'home');
        },
        showSkipButton: true,
        done: Text(
          'Done',
          style: TextStyle(fontSize: subtitleSize + 4, color: white),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Colors.red,
        ),
        skip: Text(
          'skip',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: fontSize - 10,
              color: Colors.white),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(shapeSizing / 10),
          activeSize: Size(shapeSizing / 10, shapeSizing / 10),
          color: grey,
          activeColor: neonBlue,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(shapeSizing / 2),
          ),
        ),
      ),
    );
  }
}
