import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:streaming_app/constants.dart';

import '../elements/GreenBlur.dart';
import '../elements/PinkBlur.dart';
import '../widgets/IntroImage.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _controller = PageController();

  bool _onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _onLastPage = (index == 2);
              });
            },
            children: [
              Container(
                color: bgColor,
                child: Padding(
                  padding: const EdgeInsets.only(top: shapeSizing/2),
                  child: Column(
                    children: [
                      Stack(
                        fit: StackFit.loose,
                        children: [
                          PinkBlur(),
                          GreenBlur(),
                          IntroImage(),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: defaultPadding / 3),
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
                              padding: const EdgeInsets.symmetric(horizontal:defaultPadding),
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
                              padding: const EdgeInsets.symmetric(vertical:defaultPadding),
                              child: OutlineGradientButton(
                                onTap: () {
                                  print('object');
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
                                    vertical: 12,
                                    horizontal: defaultPadding + 16),
                                radius: Radius.circular(25),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: bgColor,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: defaultPadding,
                    right: defaultPadding,
                  ),
                  child: Text(
                    'Watch movies in Virtual Realsity',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: white,
                      fontSize: titleSize + 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                color: bgColor,
                child: Padding(
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
              ),
            ],
          ),
          Container(
            alignment: Alignment(0, .9),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _controller.jumpToPage(2);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: subtitleSize + 4,
                      color: white,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: ExpandingDotsEffect(
                    activeDotColor: neonBlue,
                    dotWidth: 10,
                    dotHeight: 10,
                  ),
                ),
                _onLastPage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'home');
                        },
                        child: Text(
                          'Done',
                          style: TextStyle(
                              fontSize: subtitleSize + 4, color: white),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          _controller.nextPage(
                              duration: Duration(
                                milliseconds: 500,
                              ),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          'Next',
                          style: TextStyle(
                            fontSize: subtitleSize + 4,
                            color: white,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
