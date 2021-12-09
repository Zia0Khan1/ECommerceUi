import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/cart_card.dart';
import 'package:test_emulator/custom_widgets/myCartCard.dart';

class MyCartPage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 28.0,
            ),
          ),
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              CartCard(),
              SizedBox(
                height: 10,
              ),
              CartCard(),
              SizedBox(
                height: 20,
              ),
              Text(
                "You may also like",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: HexColor("263C32"),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _row(),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Card(
                  child: Container(
                    height: height!* 0.15,
                    width: width! * 0.95,

                    child: Column(
                      children: [
                        SizedBox(height: 30,),
                        Text(
                          "6699.0",
                          style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: HexColor("263C32"),
                          ),
                        ),
                        Text(
                          "Total Amount",
                          style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: HexColor("263C32"),
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: RoundButton(
                  btnText: "Checkout",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _row() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          MyCartCard(),
          MyCartCard(),
          MyCartCard(),
        ],
      ),
    );
  }
}
