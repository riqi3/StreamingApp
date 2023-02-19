import 'package:flutter/material.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'movie',
        style: TextStyle(fontSize: 40),
      ),
    );
  }
}