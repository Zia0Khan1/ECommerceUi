import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesCard extends StatelessWidget {
  double? height;
  double? width;

  final String? myText;
  CategoriesCard({this.myText});
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            image: DecorationImage(
              scale: 0.8,
              image: AssetImage("assets/images/wallmirror.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          myText!,
          style: GoogleFonts.roboto(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
