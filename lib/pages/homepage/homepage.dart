// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
// pages
import 'package:medicine_reminder/pages/home/home.dart';
import 'package:medicine_reminder/pages/calendar/calendar.dart';
import 'package:medicine_reminder/pages/chart/chart.dart';
import 'package:medicine_reminder/pages/profile/profile.dart';
import 'package:medicine_reminder/pages/add_schedule/add_schedule.dart';
// components
import 'components/bottomnavbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    /* --- PageView --- */
    List<Widget> _widgetOptions = <Widget>[
      const Home(),
      const Calendar(),
      const AddSchedule(),
      const Chart(),
      const Profile(),
    ];

    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      extendBody: true,
      bottomNavigationBar: BottomNavBar(
        onBNBPressed: (int index) {
          if (index != 2) {
            setState(() {
              _selectedIndex = index;
            });
          } else {
            Navigator.pushNamed(context, '/newschedule');
          }
        },
      ),
    );
  }
}
