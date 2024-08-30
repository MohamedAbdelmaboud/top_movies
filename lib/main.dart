import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:top_movies/core/routing/app_router.dart';
import 'package:top_movies/core/utils/app_colors.dart';

import 'modules/movies/domain/entites/movie.dart';

void main() {
  Movie movie1 = Movie(
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3], // const required

    id: 1,
    overview: 'overview',
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
    title: 'title',
    voteAverage: 4.5,
    voteCount: 100,
  );

  Movie movie2 = Movie(
    backdropPath: 'backdropPath',
    genreIds: [1, 2, 3], // const required
    id: 1,
    overview: 'overview',
    posterPath: 'posterPath',
    releaseDate: 'releaseDate',
    title: 'title',
    voteAverage: 4.5,
    voteCount: 100,
  );
  debugPrint((movie1 == movie2).toString());
  print(movie1.hashCode);
  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
      enabled: !kReleaseMode,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.scaffoldBg),
      routerConfig: AppRouter.router,
      title: 'Top Movies',
    );
  }
}
