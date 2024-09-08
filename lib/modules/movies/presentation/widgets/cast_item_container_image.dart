import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../domain/entites/cast.dart';
import 'cast_item_image.dart';

class CastItemContainerImage extends StatelessWidget {
  const CastItemContainerImage({
    super.key,
    required this.cast,
  });
  final Cast cast;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -3.2,
      left: -2.8,
      child: Container(
        width: 70,
        height: 73,
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
        child: CastItemImage(
          profilePath: cast.profilePath!,
        ),
      ),
    );
  }
}
