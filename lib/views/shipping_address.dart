import 'package:flutter/material.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/shipping_address_card.dart';

class ShippingAddress extends StatelessWidget {
  const ShippingAddress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            ShippingAddressCard(),
            ShippingAddressCard(),
            Spacer(),

        RoundButton(
        btnText: "Next",
        ),
          ],
        ),
      ),

    );
  }
}
