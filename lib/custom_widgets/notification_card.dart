import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/heading_one.dart';

class NotificationCard extends StatelessWidget {
  double? height;
  double? width;
  final String? title;
  final String? text;
  final Color? color;
  final Color? iconColor;
  final ImageProvider? image;

  NotificationCard({this.title, this.text, this.color,this.iconColor,this.image});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white, ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(



        // decoration: BoxDecoration(
        //     border: Border.all(
        //         // color: Colors.red,
        //         ),
        //     borderRadius: BorderRadius.all(Radius.circular(10))),
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 5.0,
                  right: 10,
                ),
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      color: color==null?HexColor("263C32"):color,
                      // color: color==null?Colors.red:color,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(50))),

                  child: image==null ? ImageIcon(
                    AssetImage("assets/images/simplelock.png",

                    ),
                    size: 40,
                    color: iconColor==null ?Colors.white: Colors.black,

                  ):ImageIcon(image),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title!,
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Lorem ipsum morbi ut dictumst auctor is turpis",
                    style: GoogleFonts.roboto(
                      color: HexColor("979797"),
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "sagittis pharetra, mattis ectus enim dolor",
                    style: GoogleFonts.roboto(
                      color: HexColor("979797"),
                      decoration: TextDecoration.none,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/images/verified.png"),
                        color: HexColor("979797"),
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        text!,
                        style: GoogleFonts.roboto(
                          color: HexColor("979797"),
                          decoration: TextDecoration.none,
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// child: ImageIcon(
// AssetImage(
// toggle!
// ? "assets/images/grid.png"
//     : "assets/images/coolicon.png",
// ),
// color: Colors.black,
// size: 18,
// ),
