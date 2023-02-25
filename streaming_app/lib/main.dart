import 'package:flutter/material.dart';

import 'pages/HomeScreen.dart';
import 'pages/IntroScreen.dart';
import 'pages/MovieScreen.dart';

void main() => runApp(StreamingApp());

class StreamingApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/' :(context) => MovieScreen(),
        'home': (context) => HomeScreen(),
        'movie':(context) => IntroScreen(),
      },
    );
  }
}
