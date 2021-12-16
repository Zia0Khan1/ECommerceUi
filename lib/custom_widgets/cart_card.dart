import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/counter_widget.dart';

class CartCard extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 2,
      child: Container(

        // height: height! * 0.15,

        child: Row(
          children: [
            Container(
              height: 100,
              // height: height! * 0.15,
             // width: 60,
              width: width! * 0.3,
              decoration: BoxDecoration(

                image: DecorationImage(
                  scale: 0.8,
                  image: AssetImage("assets/images/wallmirror.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(

              width: width! * 0.6,
              // color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(left:8.0,top: 8,bottom: 5),
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
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: HexColor("263C32"),
                          ),
                        ),
                        SizedBox(width: 5),
                        ImageIcon(new AssetImage(

                          "assets/images/delete.png",
                        )
                        ,
                          color: HexColor("979797"),

                        )
                      ],
                    ),
                    SizedBox(height: 7),
                    Text(
                      "Size: 24 inches..",
                      style: GoogleFonts.roboto(
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        color:Colors.black,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CounterWidget(),
                        // SizedBox(
                        //   child:
                        //   height: 23,
                        //   // width: 50,
                        // ),
                      ],
                    ),
                    // SizedBox(height: 10,),
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
