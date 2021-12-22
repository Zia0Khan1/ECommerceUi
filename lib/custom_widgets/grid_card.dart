import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/like_widget.dart';
import 'package:test_emulator/views/product_details.dart';

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
        padding: EdgeInsets.only(top:5.0,bottom: 5),
        // height: height! * 0.15,
        // color: Colors.lightGreen,
        child: Row(
          children: [
            Container(
              // height: height! * 0.15,

              height: 100,
              width: width! * 0.3,
              decoration: BoxDecoration(
                // color: Colors.red,
                image: DecorationImage(
                  scale: 0.8,
                  image: AssetImage("assets/images/wallmirror.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Container(
                width: width!*0.6,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Beautiful Decorative.....",
                          style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: HexColor("263C32"),
                          ),
                        ),
                        // SizedBox(width: 20),
                        LikeWidget()
                      ],
                    ),
                    SizedBox(height: 5),
                    Text(
                      "5402.99",
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                        color: HexColor("263C32"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
             Container(

                 child: Padding(
                   padding: const EdgeInsets.only(bottom: 5.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [

                       SizedBox(


                         child: MaterialButton(
                             padding: EdgeInsets.only(top:3,bottom: 3),
                             shape: RoundedRectangleBorder(
                                 borderRadius: new BorderRadius.circular(5)),
                             onPressed: () {

                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => ProductDetailsPage()),
                               );


                             },
                             child: Text(
                               "Buy Now",
                               style: GoogleFonts.roboto(
                                 decoration: TextDecoration.none,
                                 fontSize: 10,
                                 fontWeight: FontWeight.w400,
                                 color: Colors.white,
                               ),
                             ),
                             color: HexColor("263C32")),
                         height: 23,
                         width: 68,

                         // width: 50,
                       ),
                     ],
                   ),
                 ),
             ),
                    // Align(
                    //   alignment: Alignment.bottomRight,

                    // ),
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
