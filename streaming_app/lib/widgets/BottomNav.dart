import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:streaming_app/constants.dart';

import '../data.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({
    super.key,
  });

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: white.withOpacity(.05),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2.0,
            sigmaY: 2.0,
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: white.withOpacity(.08),
                  width: 2,
                ),
              ),
            ),
            height: 70,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        print('object1');
                      });
                    },
                    highlightColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                    child: Image.asset(
                      'assets/icons/home.png',
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      print('object2');
                    },
                    child: Image.asset(
                      'assets/icons/play-tv.png',
                    ),
                    highlightColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                  ),
                ),
                InkWell(
                  onTap: null,
                  child: Image.asset(
                    'assets/icons/blank.png',
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      print('object4');
                    },
                    child: Image.asset(
                      'assets/icons/categories.png',
                    ),
                    highlightColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: InkWell(
                    onTap: () {
                      print('object5');
                    },
                    child: Image.asset(
                      'assets/icons/download.png',
                    ),
                    highlightColor: Colors.transparent,
                    splashFactory: NoSplash.splashFactory,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
