import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:top_movies/core/utils/service_locator.dart';
import 'package:top_movies/modules/auth/presentation/view/login_view.dart';
import 'package:top_movies/modules/movies/domain/usecases/get_now_playing_movies_use_case.dart';
import 'package:top_movies/modules/movies/presentation/views/home_view.dart';
import 'package:top_movies/modules/onboarding/presentation/views/onboarding_view.dart';
import 'package:top_movies/modules/splash/presentation/views/splash_view.dart';

import '../../modules/auth/presentation/view/sign_up_view.dart';
import '../../modules/movies/presentation/controller/bloc/movies_bloc.dart';

class AppRouter {
  static const String splah = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String onboarding = '/onboarding';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splah,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onboarding,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: register,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => BlocProvider(
          lazy: false,
          create: (context) => MoviesBloc(
            getIt<GetNowPlayingMoviesUseCase>(),
          )..add(
              GetNowPlayingMoviesEvent(),
            ),
          child: const HomeView(),
        ),
      ),
    ],
  );
}
