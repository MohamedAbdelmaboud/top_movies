import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieLoadingShimmer extends StatelessWidget {
  const MovieLoadingShimmer({
    super.key,
    this.height = 170.0,
    this.width = 130.0,
  });
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      // baseColor: Colors.grey[850]!,
      // highlightColor: Colors.grey[800]!,
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child: Container(
        height: 170.0,
        width: 130.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
