import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class AnimatedLogo extends HookWidget {
  const AnimatedLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller =
        useAnimationController(duration: const Duration(milliseconds: 2000))
          ..repeat(reverse: true);

    final fadeAnimation =
        Tween<double>(begin: 0.5, end: 1.0).animate(controller);
    final scaleAnimation =
        Tween<double>(begin: 0.8, end: 1.0).animate(controller);

    return AnimatedBuilder(
      animation: controller,
      child: Image.asset(
        'assets/images/video.gif',
        width: 100,
        height: 100,
        fit: BoxFit.fill,
      ),
      builder: (context, child) => Opacity(
        opacity: fadeAnimation.value,
        child: Transform.scale(
          scale: scaleAnimation.value,
          child: child,
        ),
      ),
    );
  }
}
