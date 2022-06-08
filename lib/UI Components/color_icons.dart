import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

Color blue = const Color(0xFF184A95);
Color blueAccent = const Color(0xFFB9D5FF);

Color green = const Color(0xFF00A657);
Color greenAlt = const Color(0xFF62F5B0);
Color greenAccent = const Color(0xFFC4FFE3);

Color pink = const Color(0xFFA823FA);
Color pinkAccent = const Color(0xFFE9C4FF);

Color black = const Color(0xFF000000);
Color white = const Color(0xFFFFFFFF);
Color grey = const Color(0xFFEEEEEE);



Icon home = const Icon(IconlyLight.home);
Icon about = const Icon(IconlyLight.info_square);
Icon contact = const Icon(IconlyLight.call);
Icon play = const Icon(IconlyLight.play);

Color barColor(BuildContext context) => Theme.of(context).brightness ==  Brightness.light ?   const Color(0xFFEEEEEE) : const Color(0xFF0D203D);


TextStyle? bodyText1(BuildContext context) =>
    Theme.of(context).textTheme.bodyText1;

TextStyle? bodyText2(BuildContext context) =>
    Theme.of(context).textTheme.bodyText2;

TextStyle? headline1(BuildContext context) =>
    Theme.of(context).textTheme.headline1;

TextStyle? headline2(BuildContext context) =>
    Theme.of(context).textTheme.headline2;

class AppTheme {

  //  LIGHT THEME ---------------------------
  static ThemeData lightTheme = ThemeData(
    colorScheme: const ColorScheme.light(),
    scaffoldBackgroundColor: white,
    appBarTheme: AppBarTheme(
      titleTextStyle: GoogleFonts.openSans(
        color: blue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: white,
      elevation: 0,
    ),

    textTheme: TextTheme(
      bodyText1: GoogleFonts.openSans(
        color: black,
        fontSize: 16,
      ),
      bodyText2: GoogleFonts.openSans(
        textStyle: TextStyle(
          color: black,
        ),
            // color: black,
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
      headline1: GoogleFonts.openSans(
            color: blue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
      headline2: GoogleFonts.openSans(
            color: black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          )
    ),
    iconTheme: IconThemeData(
        color: black,
      ),
  );

// DARK THEME ---------------------------
  static ThemeData darkTheme = ThemeData(
    colorScheme: const ColorScheme.dark(),
    scaffoldBackgroundColor: const Color(0xFF000A18),
     appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF000A18),
      elevation: 0,
      ),
      textTheme: TextTheme(
        bodyText1: GoogleFonts.openSans(
          color: grey,
          fontSize: 16,
        ),
        bodyText2: GoogleFonts.openSans(
              color: grey,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
        headline1: GoogleFonts.openSans(
              color: grey,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
        headline2: GoogleFonts.openSans(
              color: grey,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            )
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: const Color(0xFF000A18),
        selectedIconTheme: IconThemeData(
          color: blueAccent
        )
      )
    );
}

