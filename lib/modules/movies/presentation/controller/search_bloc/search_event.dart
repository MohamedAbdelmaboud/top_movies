part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

// event search
class GetSearchMoviesEvent extends SearchEvent {
  final String query;

  const GetSearchMoviesEvent(this.query);

  @override
  List<Object> get props => [query];
}
