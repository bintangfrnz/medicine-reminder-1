// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/shared/constant.dart';
import 'package:medicine_reminder/model/drug_schedule.dart';

class EatenCard extends StatefulWidget {
  final DrugSchedules drug;
  const EatenCard({Key? key, required this.drug}) : super(key: key);
  @override
  State<EatenCard> createState() => _EatenCardState();
}

class _EatenCardState extends State<EatenCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/details', arguments: widget.drug);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: cardBg,
          borderRadius: BorderRadius.all(Radius.circular(30)),
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
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      widget.drug.pathURL,
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        widget.drug.name,
                        style: const TextStyle(
                            color: tPrimaryBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Hari ini pukul ' + widget.drug.timeScheduled,
                        style: const TextStyle(
                          color: tPrimaryBlack30,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.check_box_rounded,
                    color: tPrimaryOrange,
                    size: 30,
                  ),
                ),
              ],
            ),
            Container(
              height: 40,
              margin: const EdgeInsets.symmetric(horizontal: 15),
              decoration: const BoxDecoration(
                color: tBrown3Color,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Icon(
                    Icons.access_time_filled,
                    color: tBrown2Color,
                  ),
                  const SizedBox(width: 8),
                  Text(
                      'Sudah diminum pukul ' + widget.drug.timeEaten.toString(),
                      style: const TextStyle(
                        color: tBrown2Color,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable for Home Banner
class NotEatenCard extends StatefulWidget {
  final DrugSchedules drug;
  final double? height;
  const NotEatenCard({Key? key, required this.drug, this.height})
      : super(key: key);
  @override
  State<NotEatenCard> createState() => _NotEatenCardState();
}

class _NotEatenCardState extends State<NotEatenCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/details', arguments: widget.drug);
      },
      child: Container(
        height: widget.height ?? 80,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: cardBg,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: (widget.height == null)
              ? [
                  const BoxShadow(
                    color: tPrimaryGrey,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ]
              : null, // Home Banner doesn't need box shadow
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Image.asset(widget.drug.pathURL),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    widget.drug.name,
                    style: const TextStyle(
                        color: tPrimaryBlack,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Hari ini pukul ' + widget.drug.timeScheduled,
                    style: const TextStyle(
                      color: tPrimaryBlack30,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 2,
              child: Icon(
                Icons.check_box_outline_blank_rounded,
                color: tPrimaryOrange,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
