// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/details/components/usage_info.dart';
import 'package:medicine_reminder/shared/constant.dart';

class DrugDetails extends StatefulWidget {
  final dynamic drug;
  const DrugDetails({Key? key, required this.drug}) : super(key: key);
  @override
  State<DrugDetails> createState() => _DrugDetailsState();
}

class _DrugDetailsState extends State<DrugDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: homeBg,
                // expandedHeight: size.height * 0.4,
                flexibleSpace: Container(
                  height: size.height * 0.4,
                  decoration: const BoxDecoration(color: homeBg),
                  child: Stack(
                    children: <Widget>[
                      // Back Button
                      Positioned(
                        left: 5,
                        top: 20,
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      // Edit Button
                      Positioned(
                        right: 5,
                        top: 20,
                        child: IconButton(
                          icon: const Icon(Icons.edit_outlined),
                          onPressed: () {
                            Navigator.pushNamed(context, '/comingsoon');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Column(
                    children: <Widget>[
                      // Gambar
                      Container(
                        height: size.width * 0.28,
                        width: size.width * 0.28,
                        margin: const EdgeInsets.only(top: 10, bottom: 20),
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: tPrimaryWhite,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: tPrimaryGrey,
                              offset: Offset(0, 4),
                              blurRadius: 4,
                            )
                          ],
                        ),
                        child: Image.asset(widget.drug.pathURL),
                      ),
                      // Nama Obat
                      Text(
                        widget.drug.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: tPrimaryBlack,
                            fontSize: 24,
                            fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(height: 10),
                      // Deskripsi Obat
                      Text(
                        widget.drug.desc,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: tPrimaryBlack30,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const UsageInfo(),
                      const SizedBox(height: 10),
                    ],
                  ),
                  const Text(
                    "Ceklis Selanjutnya",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: tPrimaryBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Untuk submission selanjutnya ~",
                    textAlign: TextAlign.left,
                    style: TextStyle(color: tPrimaryBlack30, fontSize: 16),
                  ),
                  Image.asset("assets/loading.gif"),
                  // Perlu state management untuk wrap & open box
                  // Selain itu atribut data untuk keperluan timing belum dibuat
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
