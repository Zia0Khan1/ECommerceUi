import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class AddAddressCard extends StatelessWidget {
  double? height;
  double? width;
  bool isChecked = false;

  final String? title;
  final String? description;
  AddAddressCard({this.title,this.description});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      padding: new EdgeInsets.all(20.0),

      width: width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
              title!,
              style: GoogleFonts.roboto(
                color: HexColor("979797"),
                decoration: TextDecoration.none,
                fontWeight: FontWeight.w400,
              ),
            ),
          SizedBox(height: 5,),
          Text( description!,
            style: GoogleFonts.roboto(
              color:Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w800,
            ),),

    //   Container(
    //   padding: new EdgeInsets.all(20.0),
    //   width: width,
    //   decoration: BoxDecoration(color: Colors.white),
    //   child: Text(
    //     "Full Name",
    //     style: GoogleFonts.roboto(
    //       color: HexColor("979797"),
    //       decoration: TextDecoration.none,
    //       fontWeight: FontWeight.w400,
    //     ),
    //   ),
    //   // height: h,
    // ),
        ],
      ),
    );
  }
}
