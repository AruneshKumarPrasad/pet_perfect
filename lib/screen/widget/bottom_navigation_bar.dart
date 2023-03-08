import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_perfect/global/color_schemes.dart';

import '../../logic/helper/bottom_nav_bar/cubit/bottom_nav_bar_state_cubit.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({
    super.key,
    required this.onTapOfBNBItem,
  });
  final Function onTapOfBNBItem;

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  late Size deviceSize;

  @override
  void didChangeDependencies() {
    deviceSize = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceSize.height * 0.1,
      width: double.maxFinite,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                context.read<BottomNavBarStateCubit>().home();
                setState(() {
                  _selectedIndex = 0;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  color: GColor.themeColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                  boxShadow:
                      _selectedIndex == 0 ? [] : GColor.neuBoxShadowScheme,
                ),
                alignment: Alignment.center,
                child: Icon(
                  Icons.home,
                  size: deviceSize.height * 0.035,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                context.read<BottomNavBarStateCubit>().users();
                setState(() {
                  _selectedIndex = 1;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                decoration: BoxDecoration(
                  color: GColor.themeColor,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                  boxShadow:
                      _selectedIndex == 1 ? [] : GColor.neuBoxShadowScheme,
                ),
                alignment: Alignment.center,
                child: Icon(Icons.people, size: deviceSize.height * 0.035),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
