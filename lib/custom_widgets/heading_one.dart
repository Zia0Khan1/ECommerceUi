import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class H1 extends StatelessWidget {
  final String ?h1;
  H1({this.h1});
  @override
  Widget build(BuildContext context) {
    return Text(h1!,
      style: GoogleFonts.roboto(
        color: Colors.black,
        decoration: TextDecoration.none,
        fontSize: 26,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
