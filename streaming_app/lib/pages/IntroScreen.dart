import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'intro',
        style: TextStyle(
          fontSize: 40
        ),
      ),
    );
  }
}