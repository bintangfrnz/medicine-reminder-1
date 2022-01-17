// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/profile/components/terms.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(999),
                      child: const Image(
                        image: NetworkImage(
                            'https://dummyimage.com/300.png/09f/fff'),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        "Bintang F.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "bintangfajarianto@gmail.com",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: const Text(
                  "Info Lainnya",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              const Terms(),
            ],
          ),
        ),
      ),
    );
  }
}
