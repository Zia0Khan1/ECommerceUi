import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/like_widget.dart';

class NewArrivalCards extends StatelessWidget {
  double? height;
  double? width;

  final String? myText;
  final String? myPrice;

  NewArrivalCards({this.myText, this.myPrice});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        color: Colors.white,
        width: width! * 0.36,
        child: Padding(
          padding: const EdgeInsets.only(top:4.0,bottom: 7.0,right: 7.0,left: 7.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.0),
                  topLeft: Radius.circular(15.0),
                ),
                child: Container(
                  height: 140,
                  width: width! * 0.34,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 0.8,
                      image: AssetImage("assets/images/moon.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: LikeWidget(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                myText!,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 7,
              ),
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
    );
  }
}
