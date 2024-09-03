import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class NowPlayingIcon extends StatelessWidget {
  const NowPlayingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlickerNeonContainer(
      borderRadius: BorderRadius.circular(99),
      spreadColor: Colors.red,
      borderWidth: 1,
      borderColor: Colors.redAccent,
      child: const Icon(
        Icons.circle,
        color: Colors.red,
        size: 14.0,
      ),
    );
  }
}
