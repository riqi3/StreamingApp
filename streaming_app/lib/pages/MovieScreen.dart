import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';
import 'package:streaming_app/widgets/TopBar.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: TopBar(),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.loose,
        children: [
          Image.asset(
            'assets/images/thumbnails/image 76.png',
            fit: BoxFit.fitWidth,
            alignment: Alignment.topCenter,
            width: double.infinity,
            height: double.infinity,
          ),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'data',
                  style: TextStyle(
                    color: white,
                    fontSize: 50,
                  ),
                ),
              ),
              Container(
                child: Text(
                  'data',
                  style: TextStyle(
                    color: white,
                    fontSize: 50,
                  ),
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
