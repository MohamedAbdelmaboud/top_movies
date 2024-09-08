part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();
  
  @override
  List<Object> get props => [];
}

final class SearchInitial extends SearchState {}
// success failure loading
final class SearchLoading extends SearchState {}
final class SearchSuccess extends SearchState {
  final List<Movie> movies;

  const SearchSuccess(this.movies);

  @override
  List<Object> get props => [movies];
}
final class SearchFailure extends SearchState {
  final String message;

  const SearchFailure(this.message);

  @override
  List<Object> get props => [message];
}
