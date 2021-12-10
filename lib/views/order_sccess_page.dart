import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
            RoundButton(
              btnText: "Continue Shopping",
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
