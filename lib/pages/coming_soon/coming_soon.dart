// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/shared/constant.dart';
import 'package:medicine_reminder/components/custom_button.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: size.height / 5),
              Image.asset("assets/loading.gif"),
              const Text(
                'Coming Soon!',
                style: TextStyle(
                  color: tPrimaryBlack,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '- Untuk materi selanjutnya -',
                style: TextStyle(
                  color: tPrimaryBlack,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: size.height / 5),
              CustomButton(
                title: "Back to Home",
                width: size.width / 2,
                backgroundColor: tPrimaryOrange,
                textStyle: const TextStyle(color: tPrimaryWhite),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
