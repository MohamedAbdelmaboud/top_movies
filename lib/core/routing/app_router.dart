import 'package:go_router/go_router.dart';
import 'package:top_movies/modules/auth/view/login_view.dart';
import 'package:top_movies/modules/splash/presentation/views/splash_view.dart';

import '../../modules/auth/view/sign_up_view.dart';

class AppRouter {
  static const String splah = '/';
  static const String home = '/home';
  static const String login = '/login';
  static const String register = '/register';
  static const String profile = '/profile';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splah,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: register,
        builder: (context, state) => const SignUpView(),
      )
    ],
  );
}
