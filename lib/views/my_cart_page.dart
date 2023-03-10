import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/cart_card.dart';
import 'package:test_emulator/custom_widgets/custom_button.dart';
import 'package:test_emulator/custom_widgets/myCartCard.dart';
import 'package:test_emulator/views/shipping_address.dart';

class MyCartPage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("E5E5E5").withOpacity(0.2),

      appBar: AppBar(
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        automaticallyImplyLeading:false,
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
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                CartCard(),
                SizedBox(
                  height: 10,
                ),
                CartCard(),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    "You may also like",
                    style: GoogleFonts.roboto(
                      decoration: TextDecoration.none,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),

                    child: Card(
                      elevation: 0,
                      child: Container(
                        height: height! * 0.15,
                        width: width! * 0.95,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "\$6699.0",
                              style: GoogleFonts.roboto(
                                decoration: TextDecoration.none,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: HexColor("263C32"),
                              ),
                            ),
                            SizedBox(height: 5,),
                            Text(
                              "Total Amount",
                              style: GoogleFonts.roboto(
                                decoration: TextDecoration.none,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                // Center(
                //   child: CustomButton(
                //     btnText: "Checkout",
                //     onPress: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => ShippingAddress()),
                //       );
                //     },
                //   ),
                // ),

                Center(
                  child:MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))),
                      elevation:2.0,
                      minWidth: width!*0.9,
                      height: 57,
                      // color: Colors.orangeAccent,
                      color: HexColor("263C32"),
                      child: Text("Checkout",
                          style: TextStyle(fontSize: 18.0, color: Colors.white)),
                      // onPressed:onPress!(),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ShippingAddress()),
                        );
                      }
                  )
                ),
                SizedBox(
                  height: 150,
                ),
              ],
            ),
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
          SizedBox(width: 10,),
          MyCartCard(),SizedBox(width: 10,),
          MyCartCard(),
        ],
      ),
    );
  }
}
