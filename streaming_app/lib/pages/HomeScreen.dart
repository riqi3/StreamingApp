import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:streaming_app/widgets/BottomNav.dart';

import '../constants.dart';
import '../widgets/FloatingAction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text(
              'home screen test test',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              'home screen test test',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              'home screen test test',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingAction(),
      bottomNavigationBar: BottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
