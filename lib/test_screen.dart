import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/views/categories_page.dart';
import 'package:test_emulator/views/home_page.dart';
import 'package:test_emulator/views/my_cart_page.dart';
import 'package:test_emulator/views/profile_page.dart';
import 'package:test_emulator/views/wishlist_page.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  var countValue = 2;

  num aspectWidth = 2;

  num aspectHeight = 1;

  List<String> gridItems = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen',
    'Twenty'
  ];

  changeMode() {
    if (countValue == 2) {
      setState(() {
        countValue = 1;
        aspectWidth = 3;
        aspectHeight = 1;
      });
    } else {
      setState(() {
        countValue = 2;
        aspectWidth = 2;
        aspectHeight = 1;
      });
    }
  }

  getGridViewSelectedItem(BuildContext context, String gridItem) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(gridItem),
          actions: <Widget>[
            MaterialButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text(
                "Categories",
                style: TextStyle(color: Colors.black),
              ),
//        backgroundColor: Color(0xFF0077ED),
              elevation: 0.0,
              backgroundColor: Colors.transparent,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () => changeMode(),
                )
              ]),
          body: Column(children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: countValue,
                childAspectRatio: (aspectWidth / aspectHeight),
                children: gridItems
                    .map((data) => GestureDetector(
                        onTap: () {
                          // getGridViewSelectedItem(context, data);
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 5),
                            color: Colors.lightBlueAccent,
                            child: Center(
                                child: Text(data,
                                    style: TextStyle(
                                        fontSize: 22, color: Colors.white),
                                    textAlign: TextAlign.center)))))
                    .toList(),
              ),
            ),
          ])),
    );
  }
}
