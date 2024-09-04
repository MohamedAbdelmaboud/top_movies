import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class NowPlayingPosterText extends StatelessWidget {
  const NowPlayingPosterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FlickerNeonText(
      text: "NOW PLAYING",
      flickerTimeInMilliSeconds: 800,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      spreadColor: Colors.red,
      blurRadius: 25,
      textSize: 18,
      letterSpacing: 5,
    );
  }
}
