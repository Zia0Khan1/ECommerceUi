import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/heading_one.dart';

class OrderSuccessPage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("E5E5E5").withOpacity(0.2),

      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          children: [
            Spacer(),
            Image(image: AssetImage("assets/images/success.png")),
            H1(
              h1: "Order Success",
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Your order will be delivered soon",
              style: GoogleFonts.roboto(
                color: Colors.grey,
                decoration: TextDecoration.none,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              "Thank you for choosing our app!",
              style: GoogleFonts.roboto(
                color: Colors.grey,
                decoration: TextDecoration.none,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                elevation:2.0,
                minWidth: width!*0.9,
                height: 57,
                // color: Colors.orangeAccent,
                color: HexColor("263C32"),
                child: Text("Continue Shopping",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                // onPressed:onPress!(),
              onPressed: () {
Navigator.of(context).pop();
},
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
// onPressed: () {
// Navigator.of(context).pop();
// },