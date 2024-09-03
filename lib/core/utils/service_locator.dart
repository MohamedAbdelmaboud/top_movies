import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:top_movies/modules/movies/data/datasource/movie_remote_data_source.dart';
import 'package:top_movies/modules/movies/domain/repository/movie_repository.dart';

import '../../modules/movies/data/repository/movie_repository_impl.dart';
import '../../modules/movies/domain/usecases/get_now_playing_movies_use_case.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<BaseRemoteDataSource>(
      MovieRemoteDataSource(dio: getIt<Dio>()));
  getIt.registerSingleton<MovieRepository>(
    MovieRepositoryImpl(
      remoteDataSource: getIt<BaseRemoteDataSource>(),
    ),
  );
  getIt.registerSingleton<GetNowPlayingMoviesUseCase>(
    GetNowPlayingMoviesUseCase(
      movieRepository: getIt<MovieRepository>(),
    ),
  );
}
