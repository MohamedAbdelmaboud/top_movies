import '../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NoSearchBody extends StatelessWidget {
  const NoSearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.assetsImagesSearchIllstration,
          height: 300,
        ),
      ],
    );
  }
}
