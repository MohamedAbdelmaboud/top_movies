import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/trailer_bloc/trailer_bloc.dart';
import 'movie_trailer_button.dart';

class MovieTrailerWidget extends StatelessWidget {
  const MovieTrailerWidget({
    super.key,
    required this.movieId,
  });

  final int movieId;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TrailerBloc, TrailerState>(
      builder: (context, state) {
        if (state is TrailerSuccess) {
          return GestureDetector(
            onTap: () {
              _launchUrl(state.key);
            },
            child: const MovieTrailerButton(),
          );
        }
        return const SizedBox();
      },
    );
  }
}

Future<void> _launchUrl(String key) async {
  Uri url = Uri.parse('https://www.youtube.com/watch?v=$key');

  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
