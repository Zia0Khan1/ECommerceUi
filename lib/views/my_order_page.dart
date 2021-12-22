import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/cart_card.dart';
import 'package:test_emulator/custom_widgets/indicator_widget.dart';
import 'package:test_emulator/custom_widgets/my_order_card.dart';
import 'package:test_emulator/views/order_details_page.dart';

class MyOrderPage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("E5E5E5"),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "My Orders",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            InkWell(

                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderDetailsPage()),
                  );
                },
                child: MyOrderCard()),
            SizedBox(height: 10,),
            _card("Cancelled", Colors.red,context),
            SizedBox(height: 10,),
            _card("Pending", HexColor("999999"),context),

          ],

        ),
      ),
    );
  }
  _card(String status, Color color, BuildContext context){
    return InkWell(

      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OrderDetailsPage()),
        );
      },
      child: Card(
        elevation: 2,
        child: Container(
// color: Colors.red,
//         height: height! * 0.15,
          // color: Colors.lightGreen,
          child: Row(
            children: [
              Container(
                height: height! * 0.15,
                width: width! * 0.35,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    scale: 0.8,
                    image: AssetImage("assets/images/wallmirror.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(

                width: width! * 0.6,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Beautiful Decorative...",
                        style: GoogleFonts.roboto(
                          decoration: TextDecoration.none,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: HexColor("263C32"),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "ID: 24 inches..",
                        style: GoogleFonts.roboto(
                          decoration: TextDecoration.none,
                          fontSize: 13,
                          fontWeight: FontWeight.normal,
                          color: HexColor("263C32"),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "16/11/2021",
                            style: GoogleFonts.roboto(
                              decoration: TextDecoration.none,
                              fontSize: 16,

                              fontWeight: FontWeight.normal,
                              color: HexColor("263C32"),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                status,
                                style: GoogleFonts.roboto(
                                  fontSize: 12,
                                  color: color,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Radio(
                                // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                visualDensity: const VisualDensity(
                                  horizontal: VisualDensity.minimumDensity,
                                  vertical: VisualDensity.minimumDensity,
                                ),
                                groupValue: null,
                                activeColor: color,
                                onChanged: (Null? value) {},
                                value: null,
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
