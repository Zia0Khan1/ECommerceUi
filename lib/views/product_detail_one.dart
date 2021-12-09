import 'package:flutter/material.dart';
import 'package:test_emulator/custom_widgets/new_arrival_card.dart';
import 'package:test_emulator/custom_widgets/popular_product_card.dart';

class ProductDetailOne extends StatelessWidget {
  const ProductDetailOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(Icons.chevron_left),
      //   ),
      //   iconTheme: IconThemeData(
      //
      //       color: Colors.black
      //   ),
      //   title: Text(
      //     "Wall Mirror",
      //     style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
      //   ),
      //   backgroundColor: Colors.transparent,
      //   centerTitle: true,
      //   elevation: 0.0,
      //   actions: [
      //     Padding(
      //       padding: const EdgeInsets.only(right: 12.0),
      //       child: ImageIcon( new AssetImage("assets/images/coolicon.png",
      //
      //       ),
      //       color: Colors.black,
      //       size: 18,
      //
      //       ),
      //     ),
      //   ],
      // ),
      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NewArrivalCards(
                  myText: "Decoration",
                  myPrice: "5683.4",
                ),
                NewArrivalCards(
                  myText: "Decoration",
                  myPrice: "5683.4",
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NewArrivalCards(
                  myText: "Decoration",
                  myPrice: "5683.4",
                ),
                NewArrivalCards(
                  myText: "Decoration",
                  myPrice: "5683.4",
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NewArrivalCards(
                  myText: "Mirror Wall Decor",
                  myPrice: "5683.4",
                ),
                NewArrivalCards(
                  myText: "Round Vanty",
                  myPrice: "5683.4",
                ),
              ],
            ),
          ],
        ),
      ) ,
    );
  }
}
