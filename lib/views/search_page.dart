import 'package:flutter/material.dart';
import 'package:test_emulator/custom_widgets/new_arrival_card.dart';
import 'package:test_emulator/custom_widgets/search_card.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

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
          "New Arrivals",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: ImageIcon( new AssetImage("assets/images/coolicon.png",

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
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchCard(
                  myText: "Decoration",
                  myPrice: "5683.4",
                ),
                SearchCard(
                  myText: "Decoration",
                  myPrice: "5683.4",
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchCard(
                  myText: "Decoration",
                  myPrice: "5683.4",
                ),
                SearchCard(
                  myText: "Decoration",
                  myPrice: "5683.4",
                ),
              ],
            ),
            SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SearchCard(
                  myText: "Mirror Wall Decor",
                  myPrice: "5683.4",
                ),
                SearchCard(
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
