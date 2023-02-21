import 'package:flutter/material.dart';

class BotNavButtons extends StatelessWidget {
  const BotNavButtons({
    super.key,
    required this.icon,
  });

  final String icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          print('object');
        },
        child: Image.asset(
          icon,
        ),
      ),
    );
  }
}


