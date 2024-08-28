import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTitle extends StatelessWidget {
  const AnimatedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        fontFamily: 'Pacifico',
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            'Welcome to Top Movies',
            textAlign: TextAlign.center,
          )
        ],
        onTap: () {
          // print("Tap Event");
        },
      ),
    );
  }
}
