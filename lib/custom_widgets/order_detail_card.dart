import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class OrderDetailCard extends StatelessWidget {
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
    return Card(
      elevation: 3,
      child: Container(

        height: height! * 0.15,
        // color: Colors.lightGreen,
        child: Row(
          children: [
            Container(
              // height: 140,
              width: width! * 0.35,
              decoration: BoxDecoration(

                image: DecorationImage(
                  scale: 0.8,
                  image: AssetImage("assets/images/wallmirror.png"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(

              // width: width! * 0.6,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Beautiful Decorative...",
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: HexColor("263C32"),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Size: 24 inches..",
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                        color: HexColor("263C32"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "\$6699.0",
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: HexColor("263C32"),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
