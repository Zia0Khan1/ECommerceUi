import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/cart_card.dart';
import 'package:test_emulator/custom_widgets/indicator_widget.dart';
import 'package:test_emulator/custom_widgets/order_detail_card.dart';

class OrderDetailsPage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Orders Details",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ID: 012535",
                    style: GoogleFonts.roboto(
                      decoration: TextDecoration.none,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: HexColor("263C32"),
                    ),
                  ),
                  IndicatorWidget(
                    status: "Completed",
                    color: HexColor("028C04"),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                "28/10/2021",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: HexColor("263C32"),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Delivered to",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: HexColor("263C32"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "3 Newbridge Court Chino Hills, CA",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: HexColor("263C32"),
                ),
              ),
              Text(
                "91709, United States",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: HexColor("263C32"),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Payment Method",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: HexColor("263C32"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "**** **** **** 8562",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.w800,
                  color: HexColor("263C32"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 20,
                // thickness: 5,
                indent: 5,
                endIndent: 5,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              OrderDetailCard(),
              SizedBox(
                height: 15,
              ),
              OrderDetailCard(),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 20,
                // thickness: 5,
                indent: 5,
                endIndent: 5,
                color: Colors.black,
              ),
              SizedBox(
                height: 10,
              ),
              _textRow("Shipping fee", "\$56.336"),

              SizedBox(
                height: 5,
              ),
              _textRow("Shipping fee", "\$56.336"),
              SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                "\$568.36",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.none,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),


            ],
          ),
              SizedBox(
                height: 20,
              ),
            Center(
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(20.0))),
                  elevation: 2.0,
                  minWidth: width! * 0.9,
                  height: 57,
                  // color: Colors.orangeAccent,
                  color: HexColor("263C32"),
                  child: Text("Re-Order",
                      style: TextStyle(
                          fontSize: 18.0, color: Colors.white)),
                  // onPressed:onPress!(),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),

              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _textRow(String text, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: GoogleFonts.roboto(
            decoration: TextDecoration.none,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: HexColor("979797"),
          ),
        ),
        Text(
          price,
          style: GoogleFonts.roboto(
            decoration: TextDecoration.none,
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: HexColor("979797"),
          ),
        ),
      ],
    );
  }
}
