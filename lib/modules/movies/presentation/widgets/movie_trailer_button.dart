import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MovieTrailerButton extends StatelessWidget {
  const MovieTrailerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Spin(
      duration: const Duration(milliseconds: 500),
      child: Center(
        child: Card(
          elevation: 10,
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: Colors.red[500],
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.play_arrow_sharp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
