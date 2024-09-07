import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../domain/entites/cast.dart';
import 'cast_item_container_image.dart';
import 'cast_item_text.dart';

class CastItem extends StatelessWidget {
  const CastItem({
    super.key,
    required this.cast,
  });
  final Cast cast;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 250,
          child: Card(
            
            color: AppColors.primaryColor.withOpacity(0.7),
            elevation: 10,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 70,
                right: 8.0,
                top: 5.0,
                bottom: 5.0,
              ),
              child: CastItemText(cast: cast),
            ),
          ),
        ),
        CastItemContainerImage(cast: cast),
      ],
    );
  }
}
