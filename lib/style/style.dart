import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color bgColor = Colors.white;
  static Color mainColor = const Color.fromARGB(255, 18, 2, 77);
  static Color accentColor = Colors.blueAccent;

  static List<Color> cardsColor = [
    Colors.white,
    Colors.red.shade100,
    Colors.orange.shade100,
    Colors.pink.shade100,
    Colors.blue.shade100,
    Colors.green.shade100,
    Colors.yellow.shade100,
    Colors.blueGrey.shade100,
  ];

  static TextStyle mainText =
      GoogleFonts.roboto(fontSize: 15.0, fontWeight: FontWeight.bold);

  static TextStyle mainContent =
      GoogleFonts.nunito(fontSize: 13.0, fontWeight: FontWeight.normal);
  static TextStyle dateText =
      GoogleFonts.roboto(fontSize: 11.0, fontWeight: FontWeight.w600);
}
