// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';

class BNBItems {
  bool isBox;
  IconData icon;
  String? title;
  BNBItems({this.isBox = true, this.icon = Icons.close, this.title = ''});
}

List<BNBItems> allBNBItem = <BNBItems>[
  BNBItems(
    isBox: false,
    icon: Icons.home_outlined,
    title: 'Home',
  ),
  BNBItems(
    isBox: false,
    icon: Icons.calendar_today_rounded,
    title: 'Calendar',
  ),
  BNBItems(isBox: true), // CONTAINER (+)
  BNBItems(
    isBox: false,
    icon: Icons.insert_chart_outlined_rounded,
    title: 'Chart',
  ),
  BNBItems(
    isBox: false,
    icon: Icons.person_outline_rounded,
    title: 'Profile',
  )
];
