import 'package:flutter/material.dart';
import 'package:test_emulator/custom_widgets/new_arrival_card.dart';
import 'package:test_emulator/custom_widgets/popular_product_card.dart';

class ProductDetailOne extends StatelessWidget {
  const ProductDetailOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
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
        ),
      ) ,
    );
  }
}
