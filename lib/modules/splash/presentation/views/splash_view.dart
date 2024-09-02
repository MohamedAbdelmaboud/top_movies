import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:top_movies/modules/splash/presentation/widgets/splash_view_body.dart';

import '../../../../core/routing/app_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    navigateToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SplashViewBody(),
    );
  }

  void navigateToNextPage() {
    Timer(const Duration(seconds: 3), () {
      context.go(
        AppRouter.onboarding,
      );
    });
  }
}
