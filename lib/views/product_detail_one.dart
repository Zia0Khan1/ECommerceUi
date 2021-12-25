import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/new_arrival_card.dart';
import 'package:test_emulator/custom_widgets/popular_product_card.dart';
import 'package:test_emulator/custom_widgets/wall_mirror_card.dart';

class ProductDetailOne extends StatelessWidget {
  const ProductDetailOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.pink,
      backgroundColor: HexColor("E5E5E5").withOpacity(0.2),

      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  WallMirrorCard(
                    myText: "Beautiful Decorative...",
                    myPrice: "\$683.4",
                  ),
                  WallMirrorCard(
                    myText: "Beautiful Decorative...",
                    myPrice: "\$5683.4",
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WallMirrorCard(
                    myText: "Beautiful Decorative...",
                    myPrice: "\$5683.4",
                  ),
                  WallMirrorCard(
                    myText: "Beautiful Decorative...",
                    myPrice: "\$5683.4",
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  WallMirrorCard(
                    myText: "Mirror Wall Decor",
                    myPrice: "\$5683.4",
                  ),
                  WallMirrorCard(
                    myText: "Round Vanty",
                    myPrice: "\$5683.4",
                  ),
                ],
              ),
            ],
          ),
        ),
      ) ,
    );
  }
}
