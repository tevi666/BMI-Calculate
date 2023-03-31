import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemes {
  AppThemes._();


  static ThemeData get appTheme => ThemeData(
    primaryColor: Colors.red,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: 'Gruppo',
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      centerTitle: true,
    )
  );
  static const TextStyle fs15cw = TextStyle(
    fontSize: 15,
    color: Colors.white,
  );
  static const TextStyle fs20cw = TextStyle(
    fontSize: 20,
    color: Colors.white,
  );
  static const TextStyle fs25cwFw = TextStyle(
    fontSize: 25,
    color: Colors.white,
    fontWeight: FontWeight.bold
  );
  static const TextStyle fs25cpFw = TextStyle(
    fontSize: 25,
    color: Color(0xff930D33),
    fontWeight: FontWeight.bold
  );
  static const TextStyle fs25cg = TextStyle(
    fontSize: 25,
    color: Colors.green,
  );
  static const TextStyle fs25cw = TextStyle(
    fontSize: 25,
    color: Colors.white,
  );
  static const TextStyle fs30cw = TextStyle(
    fontSize: 30,
    color: Colors.white,
  );
  static const TextStyle fs30cg = TextStyle(
    fontSize: 30,
    color: Colors.green,
  );
  static const TextStyle fs40cw = TextStyle(
    fontSize: 40,
    color: Colors.white,
  );
  static const TextStyle fs40cwfWb = TextStyle(
    fontSize: 40,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle fs50cg = TextStyle(
    fontSize: 50,
    color: Colors.green,
  );
  static const TextStyle fs50cp = TextStyle(
    fontSize: 50,
    color: Color(0xff930D33),
  );
}