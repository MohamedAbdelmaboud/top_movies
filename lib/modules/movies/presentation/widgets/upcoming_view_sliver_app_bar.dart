import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/app_colors.dart';
import 'package:top_movies/core/utils/app_images.dart';
import 'package:top_movies/modules/movies/presentation/widgets/upcoming_flicker_text.dart';

class UpcomingViewSliverAppBar extends StatelessWidget {
  const UpcomingViewSliverAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: true,
      floating: true,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: AppColors.primaryColor.withOpacity(0.4),
      expandedHeight: 200.0,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: ShakeY(
          child: const UpcomingFlickerText(),
        ),
        background: Image.asset(
          Assets.assetsImagesUpcoming,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
