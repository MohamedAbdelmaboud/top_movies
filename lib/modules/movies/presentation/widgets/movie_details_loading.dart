import '../../../../core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class MovieDetailsLoading extends StatelessWidget {
  const MovieDetailsLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SpinKitWaveSpinner(
        color: Colors.white,
        trackColor: Colors.grey.shade500,
        waveColor: AppColors.primaryColor,
        size: 80.0,
      ),
    );
  }
}
