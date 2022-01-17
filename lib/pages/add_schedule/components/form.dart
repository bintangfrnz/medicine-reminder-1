// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'package:medicine_reminder/components/custom_button.dart';
import 'package:medicine_reminder/shared/constant.dart';

class DrugForm extends StatefulWidget {
  const DrugForm({Key? key}) : super(key: key);
  @override
  _DrugFormState createState() => _DrugFormState();
}

class _DrugFormState extends State<DrugForm> {
  String? name;
  String? desc;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 30),
          drugNameField(),
          const SizedBox(height: 30),
          drugDescField(),
          const SizedBox(height: 30),
          CustomButton(
            title: "Save",
            width: size.width / 2,
            backgroundColor: tPrimaryOrange,
            textStyle: const TextStyle(color: tPrimaryWhite),
            onPressed: () {
              final snackBar = SnackBar(
                content: Text((name != null)
                    ? "$name berhasil ditambahkan! (tapi boong)"
                    : "Tidak ada yang ditambahkan"),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  TextFormField drugNameField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) => name = value,
      decoration: const InputDecoration(
        labelText: "Name",
        hintText: "Enter new drug name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.chat_bubble_outline_outlined),
      ),
    );
  }

  TextFormField drugDescField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => desc = newValue,
      onChanged: (value) => desc = value,
      decoration: const InputDecoration(
        labelText: "Description",
        hintText: "Enter new drug description",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(Icons.description_outlined),
      ),
    );
  }
}
