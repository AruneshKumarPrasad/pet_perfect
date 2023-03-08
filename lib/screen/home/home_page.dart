import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_perfect/logic/helper/bottom_nav_bar/cubit/bottom_nav_bar_state_cubit.dart';
import 'package:pet_perfect/screen/home/widget/users_page_widget.dart';

import '../widget/bottom_navigation_bar.dart';
import 'widget/home_page_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late PageController _pageController;

  final List<Widget> _pages = [
    const HomePageWidget(),
    const UsersPageWidget(),
  ];

  int _selectedIndex = 0;

  int _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.animateToPage(index,
          duration: const Duration(milliseconds: 250), curve: Curves.easeOut);
    });
    return _selectedIndex;
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: MyNavigationBar(
        onTapOfBNBItem: _onItemTapped,
      ),
      body: SafeArea(
        child: BlocBuilder<BottomNavBarStateCubit, BottomNavBarStateCubitState>(
          builder: (context, state){
            if(state is BottomNavBarStateCubitHome){

            }
            return PageView(
              controller: _pageController,
              children: _pages,
            );
          },
        ),
      ),
    );
  }
}
