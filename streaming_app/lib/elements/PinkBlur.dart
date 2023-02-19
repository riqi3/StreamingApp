import 'package:flutter/material.dart';

import '../constants.dart';

class PinkBlur extends StatelessWidget {
  const PinkBlur({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 200,
        bottom: 100,
      ),
      child: Align(
        alignment: AlignmentDirectional.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(500.0),
          child: Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: neonPink,
            ),
          ),
        ),
      ),
    );
  }
}
