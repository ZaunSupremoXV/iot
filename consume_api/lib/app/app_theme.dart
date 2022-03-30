import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final darkMode = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
  );

  static final lightMode = ThemeData(
    accentColor: const Color(0xFFF27244),
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.light,
  );

  static final titleAppBar = GoogleFonts.parisienne(
    fontSize: 35,
  );

  static final textBody = GoogleFonts.cinzel(
    fontSize: 25,
  );

  static final textIntro = GoogleFonts.cinzel(fontSize: 20);

  static const primaryColorDark = Colors.blue;
  static const primaryColorLight = Color(0xFFF27244);

  static const shadow1Light = Colors.white;
  static const shadow2Light = Color(0xFFA7A9AF);
  static const shadow1Dark = Color(0xFF35393F);
  static const shadow2Dark = Color.fromARGB(255, 19, 29, 23);
}
