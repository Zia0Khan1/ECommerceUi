import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/like_widget.dart';

class ProductDetailsCard extends StatelessWidget {
  double? height;
  double? width;

  final String? myText;
  final String? myPrice;

  ProductDetailsCard({this.myText, this.myPrice});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Container(
        color: HexColor("F7F7F7"),
        width: 120,
        child: Padding(
          padding: const EdgeInsets.only(left: 7.0,right: 7,top: 5,bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  ),
                  child: Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        scale: 0.8,
                        image: AssetImage("assets/images/wallflower.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    // child: Align(
                    //   alignment: Alignment.topRight,
                    //   child: LikeWidget(),
                    // ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                myText!,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                myPrice!,
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
