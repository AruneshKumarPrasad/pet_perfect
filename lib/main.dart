import 'package:flutter/material.dart';
import 'package:pet_perfect/global/color_schemes.dart';

import 'screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Perfect',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          appBarTheme: const AppBarTheme(
            color: GColor.themeColor,
            elevation: 0,
          ),
          scaffoldBackgroundColor: GColor.themeColor),
      routes: {
        '/': (context) => const Homepage(),
      },
      initialRoute: '/',
    );
  }
}
