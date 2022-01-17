// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicine_reminder/shared/constant.dart';

ThemeData appTheme() {
  return ThemeData(
    scaffoldBackgroundColor: homeBg,
    appBarTheme: _appBarTheme(),
    inputDecorationTheme: _inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

// Gak jadi terpakai, mungkin untuk next course
AppBarTheme _appBarTheme() {
  return const AppBarTheme(
    backgroundColor: homeBg,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark, statusBarColor: homeBg),
    shadowColor: Colors.transparent,
    centerTitle: true,
    iconTheme: IconThemeData(color: tPrimaryBlack),
    titleTextStyle: TextStyle(
        fontSize: 20, color: tPrimaryBlack, fontWeight: FontWeight.bold),
  );
}

InputDecorationTheme _inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: tBrown2Color),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
