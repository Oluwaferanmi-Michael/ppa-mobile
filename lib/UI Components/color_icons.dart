import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

Color blue = Color(0xFF184A95);
Color blueAccent = Color(0xFFB9D5FF);

Color green = Color(0xFF00A657);
Color greenAlt = Color(0xFF62F5B0);
Color greenAccent = Color(0xFFC4FFE3);

Color pink = Color(0xFFA823FA);
Color pinkAccent = Color(0xFFE9C4FF);

Color black = Color(0xFF);
Color white = Color(0xFFFFFFFF);
Color grey = Color(0xFFEEEEEE);



Icon home = const Icon(IconlyLight.home);
Icon about = const Icon(IconlyLight.info_square);
Icon contact = const Icon(IconlyLight.call);
Icon play = const Icon(IconlyLight.play);


class AppTheme {
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(),
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(
      backgroundColor: AppTheme.lightTheme.scaffoldBackgroundColor,
      elevation: 0,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: black,
        fontFamily: 'Open Sans'
      )
    ),
    iconTheme: IconThemeData(
        color: black,
      )
  );

  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: Color(0xFF000A18),
     appBarTheme: AppBarTheme(
      backgroundColor: AppTheme.darkTheme.scaffoldBackgroundColor,
      elevation: 0,
      ),
      textTheme: TextTheme(
          bodyText1: TextStyle(color: grey, fontFamily: 'Open Sans')),
      iconTheme: IconThemeData(
        color: grey,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppTheme.darkTheme.scaffoldBackgroundColor,
        selectedIconTheme: IconThemeData(
          color: blueAccent
        )
      )
    );
}