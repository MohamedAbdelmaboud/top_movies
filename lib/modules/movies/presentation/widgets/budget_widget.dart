import '../../../../core/utils/app_styles.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class BudgetWidget extends StatelessWidget {
  const BudgetWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Spin(
        duration: const Duration(milliseconds: 500),
        child: Center(
          child: Card(
            elevation: 10,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            color: Colors.green[500],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                r' $533,200,000	',
                style: AppStyles.bold9,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
