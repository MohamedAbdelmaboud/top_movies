import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import 'cast_item_image.dart';

class CastItemContainerImage extends StatelessWidget {
  const CastItemContainerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -2.5,
      left: -2,
      child: Container(
        width: 63,
        height: 63,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          border: GradientBoxBorder(
            gradient: LinearGradient(
              colors: [
                Color(0xff19A1BE),
                Color(0xff7D4199),
              ],
            ),
            width: 2.5,
          ),
          color: Color(0xFF5D5D5D),
        ),
        child: const CastItemImage(),
      ),
    );
  }
}
