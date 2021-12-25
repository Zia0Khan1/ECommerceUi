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
      elevation: 0,
      child: Container(

        height: height! * 0.14,
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
                  fit: BoxFit.cover,
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
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        // color: HexColor("263C32"),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          "Size: ",
                          style: GoogleFonts.roboto(
                              decoration: TextDecoration.none,
                              fontSize: 13,
                              fontWeight: FontWeight.normal,
                            color: HexColor("979797"),),
                        ),

                        Text(
                          "24 inche...",
                          style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                      ],
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
                        color: HexColor("040C22"),
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
