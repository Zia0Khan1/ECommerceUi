import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class ShippingAddressCard extends StatelessWidget {
  double? height;
  double? width;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Jane Doe",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    "Edit",
                    style: GoogleFonts.roboto(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text("3 Newbridge Court",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  )),
              Text("Chino Hills, CA 91709, United States",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 14,
                      fontWeight: FontWeight.w700,
                  )),

              SizedBox(
                height: 10,
              ),
         _row(),

            ],
          ),
        ),
      ),
    );
  }
  _row() {
    //checkbox method
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return HexColor("263C32");
      }
      return Colors.black.withOpacity(0.3);
    }

    return Row(
      children: [
        Checkbox(

          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
       onChanged: (bool){},

        ),
        Text(
          "Use as the shipping address",
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w700,

            color: Colors.black,
            decoration: TextDecoration.none,
            // fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}
