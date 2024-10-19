import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  primaryColor: const Color(0xFF9B2948),
  hintColor: const Color(0xFFFF7251),
  scaffoldBackgroundColor: const Color(0xFFFFEDBF),
  fontFamily: "Poppins",
  iconTheme: const IconThemeData(color: Color(0xFFFF7251)),
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
        color: Color(0xFFFF7251), fontSize: 16, fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(color: Color(0xFFFF7251), fontSize: 14),
    headlineMedium: TextStyle(color: Color(0xFF9B2948), fontSize: 19, fontWeight: FontWeight.w700,decoration: TextDecoration.underline),
  ),
  appBarTheme: const AppBarTheme(
    color: Color(0xFF9B2948),
    centerTitle: true,
    titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    iconTheme: IconThemeData(color: Colors.white),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(const Color(0xFF9B2948)),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          textStyle: MaterialStateProperty.all(
              const TextStyle(fontWeight: FontWeight.w600, fontSize: 14)))),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFF9B2948)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFFF7251)),
    ),
  ),
);
