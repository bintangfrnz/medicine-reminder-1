// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/home/components/drugs_card.dart';
import 'package:medicine_reminder/shared/constant.dart';
import 'package:medicine_reminder/model/drug_schedule.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({Key? key}) : super(key: key);
  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 5),
      height: 300,
      decoration: BoxDecoration(
        color: tBrown1Color,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: Image.asset('assets/cover.png').image,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          // Greeting
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  style: TextStyle(
                    fontSize: 21,
                    color: tPrimaryWhite,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Halo, '),
                    TextSpan(
                      text: 'Bintang',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' !'),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Mari lihat ceklis selanjutnya!',
                textAlign: TextAlign.center,
                style: TextStyle(color: tPrimaryWhite),
              ),
            ],
          ),
          const SizedBox(height: 120),
          // Next Drug
          NotEatenCard(drug: nextDrug, height: 85),
        ],
      ),
    );
  }
}
