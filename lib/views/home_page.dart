import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/categories_card.dart';
import 'package:test_emulator/custom_widgets/new_arrival_card.dart';
import 'package:test_emulator/custom_widgets/popular_product_card.dart';
import 'package:test_emulator/views/notification_page.dart';

class HomePage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("E5E5E5"),
      appBar: AppBar(
        title: Text(
          "Home",
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
              onTap: () {
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
      body: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                alignment: Alignment.center,
                child: Container(
                  width: width! * 0.92,
                  decoration: BoxDecoration(
                      color: HexColor("#F0F0F0"),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 1,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      fillColor: HexColor("#F0F0F0"),
                      prefixIcon: Icon(Icons.search, color: HexColor("6C6A81")),

                      hintText: 'Search',
                      contentPadding: EdgeInsets.all(15),

                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      //   borderSide: BorderSide(color: Colors.transparent, width: 2),
                      // ),
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      //   borderSide: BorderSide(color: Colors.transparent, width: 2),
                      // ),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _headingRow(heading: "Categories"),
              SizedBox(
                height: 10,
              ),
              _row(),
              SizedBox(
                height: 15,
              ),
              _headingRow(heading: "New Arrivals"),
              SizedBox(
                height: 15,
              ),
              _newArrivalRow(),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 140,
                width: width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // scale: 0.8,
                    image: AssetImage("assets/images/woodenhang.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              _headingRow(heading: "Popular Product"),
              SizedBox(
                height: 20,
              ),
              _popularProductRow(),
              SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _headingRow({String? heading}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading!,
          style: GoogleFonts.roboto(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text("See All",
            style: GoogleFonts.roboto(
              color: HexColor("263C32"),
              decoration: TextDecoration.underline,
              // fontSize: 22,
              // fontStyle:

              fontWeight: FontWeight.bold,
            )),
      ],
    );
  }

  _row() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoriesCard(
            myText: "Wall Mirror",
          ),
          SizedBox(
            width: 15,
          ),
          CategoriesCard(
            myText: "Table Lamp",
          ),
          SizedBox(
            width: 15,
          ),
          CategoriesCard(
            myText: "Name Sign",
          ),
          SizedBox(
            width: 15,
          ),
          CategoriesCard(
            myText: "Wooden Wall",
          ),
          SizedBox(
            width: 15,
          ),
          CategoriesCard(
            myText: "Wall Mirror",
          ),
        ],
      ),
    );
  }

  _newArrivalRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          NewArrivalCards(
            myText: "Wall Mirror Design...",
            myPrice: "\$4599.00",
          ),
          SizedBox(
            width: 10,
          ),
          NewArrivalCards(
            myText: "Wall Mirror Design...",
            myPrice: "\$5684.1",
          ),
          SizedBox(
            width: 10,
          ),
          NewArrivalCards(
            myText: "Wall Mirror Design...",
            myPrice: "\$9861.2",
          ),
          SizedBox(
            width: 10,
          ),
          NewArrivalCards(
            myText: "Wall Mirror Design...l",
            myPrice: "\$6698.12",
          ),
          SizedBox(
            width: 10,
          ),
          NewArrivalCards(
            myText: "Wall Mirror Design...",
            myPrice: "\$7531.3",
          ),
        ],
      ),
    );
  }

  _popularProductRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PopulaProductCard(
            myPrice: "\$9898.3",
            myText: "Swan Wall Art",
          ),
          SizedBox(
            width: 10,
          ),
          PopulaProductCard(
            myPrice: "\$9898.3",
            myText: "Swan Wall Art",
          ),
          SizedBox(
            width: 10,
          ),
          PopulaProductCard(
            myPrice: "\$9898.3",
            myText: "Swan Wall Art",
          ),
          SizedBox(
            width: 10,
          ),
          PopulaProductCard(
            myPrice: "\$9898.3",
            myText: "Swan Wall Art",
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
