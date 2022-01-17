// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/shared/constant.dart';
import 'package:medicine_reminder/model/bnb_items.dart';

typedef BNBCallback = void Function(int index);

class BottomNavBar extends StatefulWidget {
  final BNBCallback onBNBPressed;
  const BottomNavBar({Key? key, required this.onBNBPressed}) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _curIdx = 0;
  void setBottomBarIndex(index) {
    setState(() {
      _curIdx = (index == 2) ? _curIdx : index;
      widget.onBNBPressed(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
        ),
        boxShadow: [
          BoxShadow(color: tPrimaryBlack30, spreadRadius: 0, blurRadius: 10),
        ],
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Bottom Bar
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25.0),
              topRight: Radius.circular(25.0),
            ),
            child: Container(
              color: tPrimaryWhite,
              width: size.width,
              height: 58,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: allBNBItem.map((BNBItems dest) {
                  var idx = allBNBItem.indexOf(dest);
                  if (dest.isBox) {
                    return Container(width: size.width * 0.20);
                  } else {
                    return IconButton(
                      icon: Icon(
                        dest.icon,
                        color:
                            (_curIdx == idx) ? tPrimaryBlue : tPrimaryBlack30,
                      ),
                      onPressed: () {
                        setBottomBarIndex(idx);
                      },
                    );
                  }
                }).toList(),
              ),
            ),
          ),
          // Button Mid
          Center(
            heightFactor: 0.25,
            child: SizedBox(
              height: 55,
              width: 55,
              child: FloatingActionButton(
                backgroundColor: tPrimaryBlue,
                splashColor: tPrimaryOrange,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Icon(Icons.add, color: tPrimaryWhite, size: 30),
                onPressed: () {
                  setBottomBarIndex(2);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
