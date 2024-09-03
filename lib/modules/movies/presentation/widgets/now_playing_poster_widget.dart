import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:neon_widgets/neon_widgets.dart';

class NowPlayingPosterWidget extends StatelessWidget {
  const NowPlayingPosterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      bottom: -15,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.only(bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.circle,
              color: Colors.redAccent,
              size: 16.0,
            ),
            Gap(4),
            FlickerNeonText(
              text: "NOW PLAYING",
              flickerTimeInMilliSeconds: 800,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              spreadColor: Colors.red,
              blurRadius: 40,
              textSize: 16,
              letterSpacing: 5,
            ),
          ],
        ),
      ),
    );
  }
}
