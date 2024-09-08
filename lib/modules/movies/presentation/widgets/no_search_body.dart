import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class NoSearchBody extends StatelessWidget {
  const NoSearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.assetsImagesSearchIllstration,
            height: 280,
          ),
          Flash(
            child: Text(
              'Search for your favorite movies',
              style: AppStyles.medium14,
            ),
          ),
        ],
      ),
    );
  }
}
