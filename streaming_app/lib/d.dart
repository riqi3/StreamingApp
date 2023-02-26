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
    return Scaffold(
      backgroundColor: Colors.blue,
      extendBodyBehindAppBar: true,
      appBar: TopBar(),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/thumbnails/image 76.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Stack(
              alignment: Alignment.center,
              fit: StackFit.loose,
              children: [
                Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: shapeSizing,
                      ),
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
                      width: double.infinity,
                      height: (MediaQuery.of(context).size.height / 2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: shapeSizing * 2),
                  child: Container(
                    width: (MediaQuery.of(context).size.width / 2) +
                        defaultPadding,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          child: RatingBar(
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
                                Icons.star_half,
                                color: ratingColor,
                              ),
                              empty: Icon(
                                Icons.star_border,
                                color: ratingColor,
                              ),
                            ),
                            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ),
                        Text(
                          'It was all a dream, I used to read Word Up! magazine. Salt-n-Pepa and Heavy D up in the limousine. Hangin pictures on my wall, every Saturday Rap Attack, Mr. Magic, Marley Marl.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: subtitleSize,
                            color: grey,
                          ),
                        ),
                      ],
                    ),
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
                Column(
                  children: [
                    Text(
                      'data',
                      style: TextStyle(color: white, fontSize: 100),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
