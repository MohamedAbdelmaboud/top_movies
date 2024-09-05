import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class RecommendedMoviesWidget extends StatelessWidget {
  const RecommendedMoviesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverToBoxAdapter(
        child: FadeInUp(
          from: 20,
          duration: const Duration(milliseconds: 500),
          child: Flash(
            infinite: true,
            duration: const Duration(seconds: 4),
            child: Text(
              'More like this'.toUpperCase(),
              style: AppStyles.medium16,
            ),
          ),
        ),
      ),
    );
  }
}
