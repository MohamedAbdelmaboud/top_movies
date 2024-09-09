import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controller/trailer_bloc/trailer_bloc.dart';

class BudgetWidget extends StatelessWidget {
  const BudgetWidget({
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
            child: Spin(
              duration: const Duration(milliseconds: 500),
              child: Positioned(
                right: 14,
                bottom: 20,
                child: Center(
                  child: Card(
                    elevation: 10,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Colors.red[500],
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.play_arrow_sharp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
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
