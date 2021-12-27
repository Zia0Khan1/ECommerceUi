import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/counter_widget.dart';
import 'package:test_emulator/custom_widgets/indicator_widget.dart';

class MyOrderCard extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 0,
      child: Container(

        child: Row(
          children: [
            Container(
              height: height! * 0.15,
              width: width! * 0.35,
              decoration: BoxDecoration(

                image: DecorationImage(
                  scale: 0.8,
                  image: AssetImage("assets/images/wallmirror.png"),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(

              width: width! * 0.6,
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
                        color: HexColor("263C32"),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "ID: 24 inches..",
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                        color: HexColor("263C32"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "16/11/2021",
                          style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: HexColor("263C32"),
                          ),
                        ),
                      IndicatorWidget(
                        status: "Completed",
                        color: HexColor("028C04"),
                      ),
                      ],
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
