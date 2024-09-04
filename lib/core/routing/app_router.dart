import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../modules/auth/presentation/view/login_view.dart';
import '../../modules/auth/presentation/view/sign_up_view.dart';
import '../../modules/movies/domain/usecases/get_now_playing_movies_use_case.dart';
import '../../modules/movies/domain/usecases/get_popular_movies_use_case.dart';
import '../../modules/movies/domain/usecases/get_top_rated_movies_use_case.dart';
import '../../modules/movies/domain/usecases/get_upcoming_movies_use_case.dart';
import '../../modules/movies/presentation/controller/bloc/movies_bloc.dart';
import '../../modules/movies/presentation/views/home_view.dart';
import '../../modules/movies/presentation/views/upcoming_view.dart';
import '../../modules/onboarding/presentation/views/onboarding_view.dart';
import '../../modules/splash/presentation/views/splash_view.dart';
import '../utils/service_locator.dart';

class AppRouter {
  static const String splah = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static const String onboarding = '/onboarding';
  static const String movieDetails = '/movieDetails';
  static const String upcoming = '/upcoming';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: upcoming,
        builder: (context, state) => BlocProvider(
          create: (context) => MoviesBloc(
            getIt<GetNowPlayingMoviesUseCase>(),
            getIt<GetPopularMoviesUseCase>(),
            getIt<GetTopRatedMoviesUseCase>(),
            getIt<GetUpcomingMoviesUseCase>(),
          )..add(
              GetUpcomingMoviesEvent(),
            ),
          child: const UpcomingView(),
        ),
      ),
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
          create: (context) => MoviesBloc(
            getIt<GetNowPlayingMoviesUseCase>(),
            getIt<GetPopularMoviesUseCase>(),
            getIt<GetTopRatedMoviesUseCase>(),
            getIt<GetUpcomingMoviesUseCase>(),
          )
            ..add(
              GetNowPlayingMoviesEvent(),
            )
            ..add(
              GetPopularMoviesEvent(),
            )
            ..add(
              GetTopRatedMoviesEvent(),
            )
            ..add(
              GetUpcomingMoviesEvent(),
            ),
          child: const HomeView(),
        ),
      ),
    ],
  );
}
