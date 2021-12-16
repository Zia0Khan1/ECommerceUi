import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/shipping_address_card.dart';
import 'package:test_emulator/views/add_address_page.dart';
import 'package:test_emulator/views/order_sccess_page.dart';

class ShippingAddress extends StatelessWidget {
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
        iconTheme: IconThemeData(

            color: Colors.black
        ),
        title: Text(
          "Shipping Address",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: InkWell(
              onTap: (){

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddAddressPage()),
                );
              },

              child: ImageIcon( new AssetImage("assets/images/Plus.png",

              ),
                color: Colors.black,
                size: 18,
                // child: Icon(
                //   Image(image: Asset)
                //   // Image.asset(
                //   //         'assets/images/lock.png',
                //   //         height: 20,
                //   //         width: 20,
                //   //       ),
                //   color: Colors.black,
                //   size: 28.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ShippingAddressCard(),
            ShippingAddressCard(),
            Spacer(),

            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                elevation:2.0,
                minWidth: width!*0.9,
                height: 57,
                // color: Colors.orangeAccent,
                color: HexColor("263C32"),
                child: Text("Next",
                    style: TextStyle(fontSize: 18.0, color: Colors.white)),
                // onPressed:onPress!(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OrderSuccessPage()),
                  );
                }
            ),
          ],
        ),
      ),

    );
  }
}
