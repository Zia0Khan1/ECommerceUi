import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/like_widget.dart';

class PopulaProductCard extends StatelessWidget {
  double? height;
  double? width;

  final String? myText;
  final String? myPrice;

  PopulaProductCard({this.myText, this.myPrice});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(

      decoration: BoxDecoration(
          borderRadius: new BorderRadius.circular(10)

      ),

          width: width!*0.36,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                  child: Container(
                    height: 140,
                    width: width!*0.35,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        scale: 0.8,
                        image: AssetImage("assets/images/hangduck.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: LikeWidget(),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  myText!,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 7,),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        myPrice!,
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          decoration: TextDecoration.none,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // SizedBox(
                      //   width: 60,
                      // ),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
