import '../../../../core/utils/app_colors.dart';
import 'cast_item_container_image.dart';
import 'cast_item_text.dart';
import 'movie_details_view_body.dart';
import 'package:flutter/material.dart';

class CastItem extends StatelessWidget {
  const CastItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            color: AppColors.primaryColor.withOpacity(0.7),
            elevation: 10,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Padding(
              padding: EdgeInsets.only(
                left: 80,
                right: 15.0,
                top: 5.0,
                bottom: 5.0,
              ),
              child: CastItemText(),
            ),
          ),
          const CastItemContainerImage(),
        ],
      ),
    );
  }
}
