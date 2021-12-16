import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H2 extends StatelessWidget {
  final String ?h2;

  H2({this.h2});

  @override
  Widget build(BuildContext context) {
    return Text(h2.toString(),
      style: GoogleFonts.roboto(
        color: Colors.black,
        decoration: TextDecoration.none,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
    );
  }
}
