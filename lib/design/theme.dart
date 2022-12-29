import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static Color get primary => const Color.fromARGB(255, 67, 139, 217);
  static Color get secondary => const Color.fromARGB(255, 39, 52, 62);
  static Color get background => const Color.fromARGB(255, 225, 230, 235);

  static ThemeData? normal = ThemeData(
      colorScheme: ColorScheme.light(
        primary: primary,
        secondary: secondary,
        background: background,
      ),
      textTheme: GoogleFonts.rubikTextTheme(),
      primaryTextTheme: GoogleFonts.bonaNovaTextTheme(),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(secondary),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          alignment: Alignment.center,
          fixedSize: MaterialStateProperty.all<Size>(Size(300, 50)),
        ),
      ));
}
