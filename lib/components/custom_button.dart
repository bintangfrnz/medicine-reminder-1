// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double width;
  final TextStyle textStyle;
  final Color backgroundColor;
  final Function() onPressed;

  const CustomButton({
    Key? key,
    required this.title,
    required this.textStyle,
    required this.backgroundColor,
    required this.width,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 40,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          title,
          style: textStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
