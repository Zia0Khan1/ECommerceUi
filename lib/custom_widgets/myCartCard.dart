import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class MyCartCard extends StatelessWidget {

  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),

      child: Card(
        elevation: 0,

        child: Container(
          color: Colors.white,
          // width: width!*0.8,
          child: Container(
            // width: width! * 0.56,
            // height: height! * 0.13,

            child: Row(
              children: [
                Container(

                  height: height! * 0.14,
                  width: width! * 0.3,
                  decoration: BoxDecoration(

                    image: DecorationImage(
                      scale: 0.8,
                      image: AssetImage("assets/images/flower.png"),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Container(
                  width: width! * 0.5,
                  // color: Colors.orangeAccent,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Beautiful Tree Design",
                          style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: HexColor("263C32"),
                          ),
                        ),
                        Text(
                          "Wooden Wall",
                          style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: HexColor("263C32"),
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "\$5402.99",
                          style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: HexColor("263C32"),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                border: Border.all(
                                  color: HexColor("263C32"),
                                ),
                              ),
                              child: Icon(
                                Icons.add,
                                size: 15,
                                color: Colors.white,
                              ),
                            )

                          ],
                        ),
                        SizedBox(height: 5,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
