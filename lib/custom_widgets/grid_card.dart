import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class GridCard extends StatelessWidget {
/*
  const GridCard({Key? key}) : super(key: key);
*/
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2,
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
              width: width! * 0.56,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        Icon(Icons.favorite_border)
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "5402.99",
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                        color: HexColor("263C32"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          child: MaterialButton(
                              padding: EdgeInsets.only(top:3,bottom: 3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(5)),
                              onPressed: () {},
                              child: Text(
                                "Buy Now",
                                style: GoogleFonts.roboto(
                                  decoration: TextDecoration.none,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              color: HexColor("263C32")),
                          height: 23,
                          // width: 50,
                        ),
                        // MaterialButton(
                        //
                        //   onPressed: () {
                        //     // Navigator.push(
                        //     //   context,
                        //     //   MaterialPageRoute(
                        //     //       builder: (context) => AppointmentPage()),
                        //     // );
                        //   },
                        //   height: 10,
                        //   minWidth: 10,
                        //   textColor: Colors.white,
                        //   // padding: const EdgeInsets.all(0.0),
                        //   child: Text(
                        //     "Buy Now",
                        //
                        //   ),
                        // ),
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
