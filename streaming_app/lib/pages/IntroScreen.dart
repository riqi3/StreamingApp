import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:streaming_app/constants.dart';

import '../widgets/IntroContent.dart';

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
            // physics: BouncingScrollPhysics(),
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _onLastPage = (index == 2);
              });
            },
            children: [
              IntroContent(
                title: 'Watch movies in Virtual Reality',
                subtitle: 'Download and watch offline wherever you are',
              ),
              IntroContent(
                title: 'Never gonna give yu up',
                subtitle: 'Never gonna let u down',
              ),
              IntroContent(
                title: 'Never gonna run around and...',
                subtitle: 'desert u',
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
                      fontSize: subtitleSize,
                      color: white,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: WormEffect(
                    activeDotColor: neonBlue,
                    dotColor: Color.fromARGB(255, 92, 92, 92),
                    dotWidth: 5,
                    dotHeight: 5,
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
                              fontSize: subtitleSize, color: white),
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
                            fontSize: subtitleSize,
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
