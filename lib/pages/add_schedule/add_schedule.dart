// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/add_schedule/components/form.dart';
import 'package:medicine_reminder/shared/constant.dart';

class AddSchedule extends StatelessWidget {
  const AddSchedule({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Schedule"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: const <Widget>[
                Text(
                  'Masukan nama dan deskripsi obat kamu!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: tPrimaryBlack30,
                  ),
                ),
                DrugForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
