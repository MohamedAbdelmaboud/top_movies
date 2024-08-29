import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:top_movies/core/routing/app_router.dart';
import 'package:top_movies/core/utils/app_colors.dart';

void main() {
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
