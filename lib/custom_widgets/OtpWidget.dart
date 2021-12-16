import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class OtpWidget extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              border: Border.all(color: HexColor("CECECE")),
              color: Colors.white, borderRadius: new BorderRadius.circular(10)),
          child: Center(
            child: Text("9",style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 40,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),

        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              border: Border.all(color: HexColor("CECECE")),
              color: Colors.white, borderRadius: new BorderRadius.circular(10)),
          child: Center(
            child: Text("5",style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 40,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              border: Border.all(color: HexColor("CECECE")),
              color: Colors.white, borderRadius: new BorderRadius.circular(10)),
          child: Center(
            child: Text("2",style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 40,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              color: Colors.white, borderRadius: new BorderRadius.circular(10)),
          child: Center(
            child: Text("0",style: GoogleFonts.roboto(
              color: Colors.black,
              fontSize: 40,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),),
          ),
        ),
      ],
    );
  }
}
