import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../modules/auth/data/datasource/firebase_auth_remote_data_source.dart';
import '../../modules/auth/data/repository/auth_repo_impl.dart';
import '../../modules/auth/domain/repository/auth_repo.dart';
import '../../modules/auth/domain/usecases/sign_in_use_case.dart';
import '../../modules/auth/domain/usecases/sign_up_use_case.dart';
import '../../modules/movies/data/datasource/movie_remote_data_source.dart';
import '../../modules/movies/data/repository/movie_repository_impl.dart';
import '../../modules/movies/domain/repository/movie_repository.dart';
import '../../modules/movies/domain/usecases/get_cast_use_case.dart';
import '../../modules/movies/domain/usecases/get_movie_details_use_case.dart';
import '../../modules/movies/domain/usecases/get_now_playing_movies_use_case.dart';
import '../../modules/movies/domain/usecases/get_popular_movies_use_case.dart';
import '../../modules/movies/domain/usecases/get_recommendation_movies_use_case.dart';
import '../../modules/movies/domain/usecases/get_search_movies_use_case.dart';
import '../../modules/movies/domain/usecases/get_top_rated_movies_use_case.dart';
import '../../modules/movies/domain/usecases/get_trailer_use_case.dart';
import '../../modules/movies/domain/usecases/get_upcoming_movies_use_case.dart';

final getIt = GetIt.instance;

void setup() {
  _registerNetwork();
  _registerMovieModule();
  _registerAuthModule();
}

void _registerNetwork() {
  getIt.registerLazySingleton<Dio>(() => Dio());
}

void _registerMovieModule() {
  // Register Movie Data Source
  getIt.registerLazySingleton<BaseRemoteDataSource>(
      () => MovieRemoteDataSource(dio: getIt<Dio>()));
  
  // Register Movie Repository
  getIt.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      remoteDataSource: getIt<BaseRemoteDataSource>(),
    ),
  );

  // Register each Movie-related use case
  getIt.registerLazySingleton<GetNowPlayingMoviesUseCase>(
    () => GetNowPlayingMoviesUseCase(movieRepository: getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<GetPopularMoviesUseCase>(
    () => GetPopularMoviesUseCase(movieRepository: getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<GetTopRatedMoviesUseCase>(
    () => GetTopRatedMoviesUseCase(movieRepository: getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<GetUpcomingMoviesUseCase>(
    () => GetUpcomingMoviesUseCase(movieRepository: getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<GetRecommendationMoviesUseCase>(
    () => GetRecommendationMoviesUseCase(movieRepository: getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<GetMovieDetailsUseCase>(
    () => GetMovieDetailsUseCase(movieRepository: getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<GetCastUseCase>(
    () => GetCastUseCase(movieRepository: getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<GetSearchMoviesUseCase>(
    () => GetSearchMoviesUseCase(movieRepository: getIt<MovieRepository>()),
  );
  getIt.registerLazySingleton<GetTrailerUseCase>(
    () => GetTrailerUseCase(movieRepository: getIt<MovieRepository>()),
  );
}

void _registerAuthModule() {
  // Register Auth Data Source
  getIt.registerLazySingleton<BaseFirebaseAuthRemoteDataSource>(
    () => FirebaseAuthRemoteDataSource(),
  );
  
  // Register Auth Repository
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepoImpl(
      baseFirebaseAuthRemoteDataSource:
          getIt<BaseFirebaseAuthRemoteDataSource>(),
    ),
  );
  
  // Register Auth Use Cases
  getIt.registerLazySingleton<SignInUseCase>(
    () => SignInUseCase(
      authRepo: getIt<AuthRepo>(),
    ),
  );
  getIt.registerLazySingleton<SignUpUseCase>(
    () => SignUpUseCase(
      authRepo: getIt<AuthRepo>(),
    ),
  );
}
