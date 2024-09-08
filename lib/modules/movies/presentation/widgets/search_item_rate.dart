import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/movie.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchItemRate extends StatelessWidget {
  const SearchItemRate({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
