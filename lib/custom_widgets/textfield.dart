import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TextFieldWidget extends StatelessWidget {
  final String? hintText;

  // final IconData? icon;

  TextFieldWidget({
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        color: HexColor("6C6A81")
      ),
      decoration: InputDecoration(
          focusColor: HexColor("6C6A81"),
          prefixIcon: ImageIcon(
            new AssetImage(
              "assets/images/Mail.png",
            ),
            color: HexColor("626262"),
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
                color: Colors.transparent.withOpacity(0.1), width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(
                color: Colors.transparent.withOpacity(0.1), width: 2),
          ),
          hintStyle: GoogleFonts.roboto(
              color: HexColor("6C6A81"),
              decoration: TextDecoration.none,
              fontWeight: FontWeight.normal),
          hintText: hintText,

          fillColor: HexColor("F7F7F7")),
    );
  }
}

// enabledBorder: OutlineInputBorder(
// borderRadius: BorderRadius.all(Radius.circular(12.0)),
// borderSide: BorderSide(color: Colors.green, width: 2),
// ),
