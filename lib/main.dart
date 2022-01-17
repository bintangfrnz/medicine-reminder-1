// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
// shared
import 'package:medicine_reminder/shared/theme.dart';
// pages
import 'package:medicine_reminder/pages/details/details.dart';
import 'package:medicine_reminder/pages/homepage/homepage.dart';
import 'package:medicine_reminder/pages/coming_soon/coming_soon.dart';
import 'package:medicine_reminder/pages/add_schedule/add_schedule.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme(),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (route) {
        switch (route.name) {
          case '/':
            {
              return MaterialPageRoute(
                builder: (context) => const HomePage(),
                settings: route,
              );
            }
          case '/comingsoon':
            {
              return MaterialPageRoute(
                builder: (context) => const ComingSoon(),
                settings: route,
              );
            }
          case '/details':
            {
              return MaterialPageRoute(
                builder: (context) => DrugDetails(drug: route.arguments),
                settings: route,
              );
            }
          case '/newschedule':
            {
              return MaterialPageRoute(
                builder: (context) => const AddSchedule(),
                settings: route,
              );
            }
        }
      },
    );
  }
}
