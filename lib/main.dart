import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pet_perfect/global/color_schemes.dart';
import 'package:pet_perfect/logic/helper/bottom_nav_bar/cubit/bottom_nav_bar_state_cubit.dart';

import 'screen/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BottomNavBarStateCubit(),
      child: MaterialApp(
        title: 'Pet Perfect',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            color: GColor.themeColor,
            elevation: 0,
          ),
          scaffoldBackgroundColor: GColor.themeColor,
        ),
        routes: {
          '/': (context) => const Homepage(),
        },
        initialRoute: '/',
      ),
    );
  }
}
