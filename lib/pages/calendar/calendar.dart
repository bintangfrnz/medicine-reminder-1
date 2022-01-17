// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/shared/constant.dart';

class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Text(
                'Tunggu saya!',
                style: TextStyle(
                  color: tPrimaryBlack,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'di submission selanjutnya :)',
                style: TextStyle(
                  color: tPrimaryBlack,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
