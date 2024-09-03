import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:top_movies/core/routing/app_router.dart';
import 'package:top_movies/core/utils/app_colors.dart';
import 'package:top_movies/core/utils/app_styles.dart';

class WelcomeButtonWidget extends StatelessWidget {
  const WelcomeButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // fromLTRB
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.transparent,
          ],
          stops: [0, 0.3, 0.9, 1],
        ).createShader(
          Rect.fromLTRB(0, 0, rect.width, rect.height),
        );
      },
      blendMode: BlendMode.dstIn,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 50,
          child: NeonContainer(
            spreadColor: AppColors.primaryColor,
            borderWidth: 2,
            child: TextButton(
                onPressed: () {
                  GoRouter.of(context).go(AppRouter.login);
                },
                child: Text(
                  'Welcome',
                  style: AppStyles.bold19.copyWith(
                    fontFamily: 'Pacifico',
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
