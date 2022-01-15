import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:app_in/constants.dart';

import 'package:app_in/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme:
            GoogleFonts.dmSansTextTheme().apply(displayColor: kTextColor),
        appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          elevation: 0,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
