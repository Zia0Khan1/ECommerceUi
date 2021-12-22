import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/new_arrival_card.dart';
import 'package:test_emulator/custom_widgets/wish_list_card.dart';
import 'package:test_emulator/views/notification_page.dart';

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
        automaticallyImplyLeading:false,
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
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
              child: Icon(
                Icons.notifications_none,
                color: Colors.black,
                size: 28.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        color: HexColor("F3F3F3"),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
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
                SizedBox(
                  height: 120,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

  _cardRow() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

        WishListCard(
          myText: "Mirror Wall Decor",
          myPrice: "\$2599.0",
        ),
        SizedBox(width: 15,),
        WishListCard(
          myText: "Mirror Wall Decor",
          myPrice: "\$2599.0",
        ),

        // NewArrivalCards(
        //   myText: "Round Shape wall.6",
        //   myPrice: "3234.36",
        // ),NewArrivalCards(d
        //   myText: "Round Shape wall.6",
        //   myPrice: "3234.36",
        // ),

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
