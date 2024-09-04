import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class UpcomingFlickerText extends StatelessWidget {
  const UpcomingFlickerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const FlickerNeonText(
      text: "Upcoming Movies",
      flickerTimeInMilliSeconds: 5000,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.bold,
      spreadColor: Colors.red,
      blurRadius: 25,
      textSize: 14,
      letterSpacing: 5,
    );
  }
}
