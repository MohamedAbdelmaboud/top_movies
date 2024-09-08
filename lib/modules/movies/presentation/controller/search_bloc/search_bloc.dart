import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entites/movie.dart';
import '../../../domain/usecases/get_search_movies_use_case.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GetSearchMoviesUseCase getSearchMoviesUseCase;

  SearchBloc(this.getSearchMoviesUseCase) : super(SearchInitial()) {
    on<GetSearchMoviesEvent>(_getSearchMovies);
  }

  FutureOr<void> _getSearchMovies(
      GetSearchMoviesEvent event, Emitter<SearchState> emit) async {
    emit(SearchLoading());
    final result = await getSearchMoviesUseCase.execute(event.query);
    result.fold(
      (failure) => emit(SearchFailure(failure.errorMessage)),
      (movies) => emit(SearchSuccess(movies)),
    );
  }
}
