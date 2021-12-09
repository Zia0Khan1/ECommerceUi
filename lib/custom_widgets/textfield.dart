import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final IconData? icon;

  TextFieldWidget({this.hintText,this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(icon==null?Icons.email_outlined: icon, ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20.0),
          //     // color: HexColor("#F7F7F7")
          //   // borderSide: BorderSide(color: Colors.red),
          // ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.grey.withOpacity(0.3), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          hintStyle: GoogleFonts.roboto(
              color: Colors.grey,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w500),
          hintText: hintText,
          fillColor: HexColor("#F7F7F7")),
    );
  }
}


// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.all(Radius.circular(12.0)),
// borderSide: BorderSide(color: Colors.green, width: 2),
// ),