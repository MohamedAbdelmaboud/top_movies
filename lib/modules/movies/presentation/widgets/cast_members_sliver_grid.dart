import '../../domain/entites/cast.dart';
import 'cast_item.dart';
import 'package:flutter/material.dart';

class CastMembersSliverGrid extends StatelessWidget {
  const CastMembersSliverGrid({
    super.key,
    required this.castMembers,
  });

  final List<Cast> castMembers;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return CastItem(
              cast: castMembers[index],
            );
          },
          childCount: 4,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
          childAspectRatio: 2,
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
