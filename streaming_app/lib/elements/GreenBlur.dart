import 'package:flutter/material.dart';

import '../constants.dart';

class GreenBlur extends StatelessWidget {
  const GreenBlur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 230,
        top: 120,
      ),
      child: Align(
        alignment: AlignmentDirectional.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500.0),
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: neonGreen,
            ),
          ),
        ),
      ),
    );
  }
}

