import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/search_bloc/search_bloc.dart';
import 'custom_search_field.dart';
import 'no_search_body.dart';
import 'search_body_loaded.dart';
import 'search_loading_body.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomSearchField(
              onChanged: (query) {
                context.read<SearchBloc>().add(GetSearchMoviesEvent(query));
              },
            ),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                switch (state.runtimeType) {
                  case const (SearchLoading):
                    return const SearchLoadingBody();
                  case const (SearchSuccess):
                    final successState = state as SearchSuccess;
                    if (successState.movies.isEmpty) {
                      return const NoSearchBody();
                    }

                    return SearchBodyLoaded(
                      movies: successState.movies,
                    );
                  case const (SearchFailure):
                    final failureState = state as SearchFailure;
                    return Center(
                      child: Text(
                        failureState.message,
                      ),
                    );

                  default:
                    return const NoSearchBody();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
