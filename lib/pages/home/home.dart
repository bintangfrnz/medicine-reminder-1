// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:medicine_reminder/pages/home/components/drugs_card.dart';
import 'package:medicine_reminder/shared/constant.dart';
import 'package:medicine_reminder/model/drug_schedule.dart';
import 'components/home_banner.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // Home Banner
                const HomeBanner(),
                // List Jadwal
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Text(
                        'Jadwal Hari Ini',
                        style: TextStyle(
                            color: tPrimaryBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 12),
                      /*
                        Pakai StaggeredGridView karena
                        ingin menampilkan Grid View dengan height box
                        yang berbeda
                      */
                      StaggeredGridView.count(
                        primary: true,
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        crossAxisCount: 1,
                        mainAxisSpacing: 15,
                        staggeredTiles:
                            List.generate(drugSchedules.length, (idx) {
                          return StaggeredTile.count(
                              1, drugSchedules[idx].isEaten ? 0.52 : 0.3);
                        }),
                        children: List.generate(drugSchedules.length, (index) {
                          if (drugSchedules[index].isEaten) {
                            // SUDAH MINUM
                            return EatenCard(drug: drugSchedules[index]);
                          } else {
                            // BELUM MINUM
                            return NotEatenCard(drug: drugSchedules[index]);
                          }
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
