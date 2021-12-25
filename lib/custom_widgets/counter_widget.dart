import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              color: HexColor("E8EBEE"),
              borderRadius: new BorderRadius.circular(7)),
          child: Center(child: Icon(Icons.remove,color: HexColor("363D4E"),size: 18,)),

        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "1",   style: GoogleFonts.roboto(
          color: Colors.black,
          fontSize: 18,
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w600,
        ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 24,
          width: 24,
          decoration: BoxDecoration(
              color: HexColor("E8EBEE"),
              borderRadius: new BorderRadius.circular(5)),
          child: Icon(Icons.add,color: HexColor("363D4E"),size: 18,),
        ),
      ],
    );
  }
}
