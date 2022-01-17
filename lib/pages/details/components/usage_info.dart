// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/shared/constant.dart';

class UsageInfo extends StatelessWidget {
  const UsageInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        // Durasi
        Container(
          height: 85,
          width: size.width * 0.4,
          margin: const EdgeInsets.only(top: 10, bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
            color: tPrimaryWhite,
            borderRadius: BorderRadius.all(Radius.circular(18)),
            boxShadow: [
              BoxShadow(
                color: tPrimaryGrey,
                offset: Offset(0, 4),
                blurRadius: 4,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Durasi',
                style: TextStyle(
                  color: tPrimaryBlack30,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.calendar_today_outlined,
                    color: tBrown2Color,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '1 Bulan',
                    style: TextStyle(
                        color: tPrimaryBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
        // Frekuensi
        Container(
          height: 85,
          width: size.width * 0.4,
          margin: const EdgeInsets.only(top: 10, bottom: 20),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: const BoxDecoration(
            color: tPrimaryWhite,
            borderRadius: BorderRadius.all(Radius.circular(18)),
            boxShadow: [
              BoxShadow(
                color: tPrimaryGrey,
                offset: Offset(0, 4),
                blurRadius: 4,
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Durasi',
                style: TextStyle(
                  color: tPrimaryBlack30,
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: const <Widget>[
                  Icon(
                    Icons.access_time_rounded,
                    color: tBrown2Color,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '2x sehari',
                    style: TextStyle(
                        color: tPrimaryBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
