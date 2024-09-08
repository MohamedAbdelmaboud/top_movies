import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SearchLoadingBody extends StatelessWidget {
  const SearchLoadingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LoadingAnimationWidget.inkDrop(
        color: Colors.white,
        size: 50,
      ),
    );
  }
}
