import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/service_locator.dart';
import '../../domain/usecases/get_search_movies_use_case.dart';
import '../controller/search_bloc/search_bloc.dart';
import '../widgets/custom_bottom_navigation.dart';
import '../widgets/home_view_body.dart';
import 'profile_view.dart';
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
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentSelectedIndex],
      bottomNavigationBar: CustomBottomNavigation(
        currentSelectedIndex: currentSelectedIndex,
        onTap: updateCurrentIndex,
      ),
    );
  }
}
