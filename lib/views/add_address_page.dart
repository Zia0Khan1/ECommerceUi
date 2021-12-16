import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/add_address_card.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/views/order_sccess_page.dart';

class AddAddressPage extends StatelessWidget {
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
          "Shipping Address",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            _container(),
            SizedBox(
              height: 10,
            ),
            AddAddressCard(
              title: "Address",
              description: "3 Newbridge Court",
            ),
            SizedBox(
              height: 15,
            ),
            AddAddressCard(
              title: "City",
              description: "City Hills",
            ),
            SizedBox(
              height: 15,
            ),
            AddAddressCard(
              title: "State/Province/Region",
              description: "California",
            ),
            SizedBox(
              height: 15,
            ),
            AddAddressCard(
              title: "Zip Code(Postal Code)",
              description: "91709",
            ),
            SizedBox(
              height: 15,
            ),
            _lowerContainer(),
            Spacer(),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                elevation:2.0,
                minWidth: width!*0.9,
                height: 57,
                // color: Colors.orangeAccent,
                color: HexColor("263C32"),
                child: Text("Save Address",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                // onPressed:onPress!(),
                onPressed: () {
                  Navigator.pop(context);
                }
            )
          ],
        ),
      ),
    );
  }

  _container() {
    return Container(
      padding: new EdgeInsets.all(20.0),
      width: width,
      decoration: BoxDecoration(color: Colors.white),
      child: Text(
        "Full Name",
        style: GoogleFonts.roboto(
          color: HexColor("979797"),
          decoration: TextDecoration.none,
          fontWeight: FontWeight.w400,
        ),
      ),
      // height: h,
    );
  }

  _lowerContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      padding: new EdgeInsets.all(20.0),
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Country",
            style: GoogleFonts.roboto(
              color: HexColor("979797"),
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w400,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "United States",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.black,
              )
            ],
          ),

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
