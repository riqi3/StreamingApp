import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/widgets/CircleGradientButton.dart';
import 'package:streaming_app/widgets/CustomTextWidget.dart';
import 'package:streaming_app/widgets/TopBar.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          alignment: Alignment.topCenter,
          image: AssetImage(
            'assets/images/thumbnails/image 76.png',
          ),
          fit: BoxFit.contain,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: true,
        appBar: TopBar(),
        body: Stack(
          children: [
            Expanded(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  foregroundDecoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black,
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black
                      ],
                      begin: Alignment.center,
                      end: Alignment.topCenter,
                      stops: [0.0, 1.0, 0.0, 0.0],
                    ),
                  ),
                  width: double.maxFinite,
                  height: (MediaQuery.of(context).size.height / 1.3),
                ),
              ),
            ),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        // color: Colors.blue,
                        width: 20,
                        height: MediaQuery.of(context).size.height / 2.5,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(top: shapeSizing / 2),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: defaultPadding2,
                                  ),
                                  child: CustomTextWidget(
                                    title: 'Eternals',
                                    titleSize: titleSize,
                                    color: white,
                                    align: TextAlign.center,
                                    weight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: defaultPadding2,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'data',
                                        style: TextStyle(
                                          color: grey,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 3,
                                        backgroundColor: grey,
                                      ),
                                      Text(
                                        'data',
                                        style: TextStyle(
                                          color: grey,
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 3,
                                        backgroundColor: grey,
                                      ),
                                      Text(
                                        'data',
                                        style: TextStyle(
                                          color: grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: defaultPadding2,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RatingBar(
                                        initialRating: 3,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: 20,
                                        ratingWidget: RatingWidget(
                                          full: Icon(
                                            Icons.star,
                                            color: ratingColor,
                                          ),
                                          half: Icon(
                                            Icons.star,
                                            color: ratingColor,
                                          ),
                                          empty: Icon(
                                            Icons.star,
                                            color: white,
                                          ),
                                        ),
                                        itemPadding: EdgeInsets.symmetric(
                                            horizontal: 4.0),
                                        onRatingUpdate: (rating) {
                                          print(rating);
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: defaultPadding2,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.3,
                                        child: Text(
                                          'It was all a dream, I used to read Word Up! magazine. Salt-n-Pepa and Heavy D up in the limousine. Hangin pictures on my wall, every Saturday Rap Attack, Mr. Magic, Marley Marl.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: subtitleSize,
                                            color: grey,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.3,
                                        child: Text(
                                          'It was all a dream, I used to read Word Up! magazine. Salt-n-Pepa and Heavy D up in the limousine. Hangin pictures on my wall, every Saturday Rap Attack, Mr. Magic, Marley Marl.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: subtitleSize,
                                            color: grey,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.3,
                                        child: Text(
                                          'It was all a dream, I used to read Word Up! magazine. Salt-n-Pepa and Heavy D up in the limousine. Hangin pictures on my wall, every Saturday Rap Attack, Mr. Magic, Marley Marl.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: subtitleSize,
                                            color: grey,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.3,
                                        child: Text(
                                          'It was all a dream, I used to read Word Up! magazine. Salt-n-Pepa and Heavy D up in the limousine. Hangin pictures on my wall, every Saturday Rap Attack, Mr. Magic, Marley Marl.',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: subtitleSize,
                                            color: grey,
                                          ),
                                        ),
                                      ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: defaultPadding / 2,
                                bottom: (shapeSizing / 2) + defaultPadding2,
                              ),
                              child: CircleGradientButton(
                                image: play,
                                width: 70,
                                height: 70,
                                scale: .8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
