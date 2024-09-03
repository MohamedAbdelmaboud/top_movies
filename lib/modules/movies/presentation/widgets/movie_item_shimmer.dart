import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieItemShimmer extends StatelessWidget {
  const MovieItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(5),
        ),
        width: 140.0,
      ),
    );
  }
}
