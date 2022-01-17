// Bintang Fajarianto
// Submission Dicoding : Belajar Membuat Aplikasi Flutter untuk Pemula

import 'package:flutter/material.dart';
import 'list_terms.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<ListTerms> listTerms = <ListTerms>[
      ListTerms(
          title: "Kebijakan Akun",
          icon: const Icon(Icons.admin_panel_settings_rounded),
          onTap: () {
            Navigator.pushNamed(context, '/comingsoon');
          }),
      ListTerms(
          title: "Help",
          icon: const Icon(Icons.help_rounded),
          onTap: () {
            Navigator.pushNamed(context, '/comingsoon');
          }),
      ListTerms(
          title: "Sign out",
          icon: const Icon(Icons.logout_rounded),
          onTap: () {
            Navigator.pushNamed(context, '/comingsoon');
          }),
    ];
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: listTerms.map((ListTerms term) {
        return ListTile(
          title: Text(term.title),
          leading: term.icon,
          trailing: const Icon(Icons.keyboard_arrow_right_sharp),
          minLeadingWidth: 10,
          onTap: term.onTap,
        );
      }).toList(),
    );
  }
}
