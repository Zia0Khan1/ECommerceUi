import 'package:flutter/material.dart';
import 'package:test_emulator/custom_widgets/new_arrival_card.dart';

class WishListPage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wishlist",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 28.0,
            ),
          ),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              _cardRow(),
              SizedBox(
                height: 20,
              ),
              _cardRow(),
              SizedBox(
                height: 20,
              ),
              _cardRow(),
            ],
          ),
        ),
      ),
    );
  }

  _cardRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        NewArrivalCards(
          myText: "Round Shape wall.6",
          myPrice: "3234.36",
        ),

        NewArrivalCards(
          myText: "Round Shape wall.6",
          myPrice: "3234.36",
        ),
      ],
    );
  }

  _btnLike(){
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(

            color: Colors.white,
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage("assets/images/like.png",
              ),
            )
        ),
      ),
    );
  }
}
