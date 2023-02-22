import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:streaming_app/elements/BlurredShape.dart';
import 'package:streaming_app/widgets/BottomNav.dart';

import '../constants.dart';
import '../widgets/FloatingAction.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: shapeSizing * 6.5,),
              child: Row(
                children: [
                  BlurredShape(
                    shapeWidth: 100,
                    shapeHeight: 100,
                    shapeColor: neonGreen,
                    leftPadding: 0,
                    rightPadding: 0,
                    topPadding: 0,
                    bottomPadding: 0,
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 90.0,
                      sigmaY: 90.0,
                    ),
                    child: Text(''),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingAction(),
      bottomNavigationBar: BottomNav(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
