import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/service_locator.dart';
import '../../domain/usecases/get_search_movies_use_case.dart';
import '../controller/search_bloc/search_bloc.dart';
import '../widgets/home_view_body.dart';
import 'search_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentSelectedIndex = 0;

  void updateCurrentIndex(int index) {
    setState(() {
      currentSelectedIndex = index;
    });
  }

  final pages = [
    const HomeViewBody(),
    BlocProvider(
        lazy: false,
      create: (context) => SearchBloc(
        getIt<GetSearchMoviesUseCase>(),
      ),
      child: const SearchView(),
    ),
    const Center(
      child: Text("Profile"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentSelectedIndex],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: AppColors.primaryColor,
              width: 3.0, // Thickness of the border
            ),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.scaffoldBg,
          onTap: updateCurrentIndex,
          elevation: 0,
          currentIndex: currentSelectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: AppColors.primaryColor,
          selectedLabelStyle: AppStyles.bold12,
          items: [
            buildBottomNavigationBarItem(
              label: "Home",
              iconPath: Assets.assetsImagesHome,
            ),
            buildBottomNavigationBarItem(
              label: "Search",
              iconPath: Assets.assetsImagesSearch,
            ),
            buildBottomNavigationBarItem(
              label: "Profile",
              iconPath: Assets.assetsImagesUser,
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      {required String label, required String iconPath}) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
      ),
      activeIcon: Center(
        child: SvgPicture.asset(
          iconPath,
          colorFilter: const ColorFilter.mode(
            AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
      label: label,
    );
  }
}

const Color inActiveIconColor = Color(0xFFB6B6B6);
