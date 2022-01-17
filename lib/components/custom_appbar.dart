// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/shared/constant.dart';

// Gak jadi terpakai, mungkin untuk next course

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final String title;
  final IconData? leadingIcon;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.leadingIcon = Icons.arrow_back,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        padding: const EdgeInsets.only(left: 3),
        child: IconButton(
          icon: Icon(
            leadingIcon,
            color: tPrimaryBlack,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: tPrimaryBlack,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
