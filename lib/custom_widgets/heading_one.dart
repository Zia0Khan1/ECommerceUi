import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class H1 extends StatelessWidget {
  final String ?h1;
  H1({this.h1});
  @override
  Widget build(BuildContext context) {
    return Text(h1!,
      style: GoogleFonts.roboto(
        color: HexColor("1C1C1C"),
        decoration: TextDecoration.none,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
