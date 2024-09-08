import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_constance.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/movie.dart';
import '../controller/search_bloc/search_bloc.dart';
import 'custom_search_field.dart';
import 'movie_loading_shimmer.dart';

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
                if (state is SearchLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is SearchSuccess) {
                  return SearchBodyLoaded(
                    movies: state.movies,
                  );
                } else if (state is SearchFailure) {
                  return Center(
                    child: Text(
                      state.message,
                    ),
                  );
                }

                return const NoSearchBody();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBodyLoaded extends StatelessWidget {
  const SearchBodyLoaded({super.key, required this.movies});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 22),
        separatorBuilder: (context, index) => const Gap(12),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return Row(
            children: [
              SearchItemImage(movie: movie),
              const Gap(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * .5,
                          ),
                          child: Text(
                            movie.title,
                            style: AppStyles.semiBold13,
                            maxLines: 1,
                            overflow: TextOverflow
                                .ellipsis, // Ensures ellipsis when overflowing
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Roulette(
                              child: Spin(
                                child: const Icon(
                                  Icons.star_outline_rounded,
                                  color: Color(0xffFF8700),
                                  size: 18.0,
                                ),
                              ),
                            ),
                            const Gap(4),
                            Text(
                              (movie.voteAverage).toStringAsFixed(1),
                              style: AppStyles.semiBold13.copyWith(
                                color: const Color(0xffFF8700),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: MediaQuery.of(context).size.width * .6,
                      ),
                      child: Text(
                        movie.overview,
                        style: AppStyles.medium12,
                        overflow: TextOverflow
                            .ellipsis, // Ensures ellipsis when overflowing
                        maxLines: 2, // Limits the text to two lines
                        softWrap: true, // Enables text wrapping
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

class SearchItemImage extends StatelessWidget {
  const SearchItemImage({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      child: CachedNetworkImage(
        width: 95.0,
        height: 120,
        fit: BoxFit.cover,
        imageUrl: getImageUrl(movie.posterPath),
        placeholder: (context, url) => const MovieLoadingShimmer(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}

class NoSearchBody extends StatelessWidget {
  const NoSearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.assetsImagesSearchIllstration,
          height: 300,
        ),
      ],
    );
  }
}
