import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/like_widget.dart';

class WishListCard extends StatelessWidget {
  double? height;
  double? width;

  final String? myText;
  final String? myPrice;

  WishListCard({this.myText, this.myPrice});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          // color: Colors.red,
          width: width!*0.42,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    height: 140,
                    width: width!*0.4,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        scale: 0.8,
                        image: AssetImage("assets/images/moon.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: _btnLike(),
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
                SizedBox(height: 5,),
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
                        child: Icon(Icons.add,size: 15,color: Colors.white,),)

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
  _btnLike(){
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(

            color: Colors.white,
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Align(
            alignment: Alignment.center,
            child: Image(
              color: Colors.red,
              image: AssetImage("assets/images/like.png",
              ),
            )
        ),
      ),
    );
  }
}
