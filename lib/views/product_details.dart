import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/heading_one.dart';
import 'package:test_emulator/custom_widgets/product_details_card.dart';

class ProductDetailsPage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height! * 0.45),
        // here the desired height

        child: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30)),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.chevron_left),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          flexibleSpace: Image(
            image: AssetImage("assets/images/bgappbar.png"),
            fit: BoxFit.cover,
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
      ),
      body: Container(
        width: width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Beautiful Decorative Vanity Mirror",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "With Walnut Finish Frame",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _ratingRow(),
                SizedBox(
                  height: 10,
                ),
                H1(
                  h1: "568.6",
                ),
                SizedBox(
                  height: 10,
                ),
                ExpandableNotifier(
                  child: ScrollOnExpand(
                    child: ExpandablePanel(
                        header: Text(
                          "Product Details",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        collapsed: Text(
                          "",
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                        ),
                        expanded: Column(
                          children: [
                            Text(
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ExpandableNotifier(
                  child: ScrollOnExpand(
                    child: ExpandablePanel(
                        header: Text(
                          "Shipping & Returns",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        collapsed: Text(
                          "",
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                        ),
                        expanded: Column(
                          children: [
                            Text(
                              "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                              style: GoogleFonts.roboto(
                                color: Colors.black,
                                decoration: TextDecoration.none,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                _textRow(),
                SizedBox(
                  height: 10,
                ),
                _productDetailCard(
                ),
                SizedBox(
                  height: 25,
                ),
                RoundButton(
                  btnText: "Add to Cart",
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _ratingRow() {
    return Row(
      children: [
        RatingBarIndicator(
          rating: 4.5,
          itemBuilder: (context, index) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          itemCount: 5,
          itemSize: 25.0,
          direction: Axis.horizontal,
        ),
        Text(
          "(2 review)",
          style: GoogleFonts.roboto(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  _textRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text("You can also like this",style: GoogleFonts.roboto(
           color: Colors.black,
           decoration: TextDecoration.none,
           fontSize: 16,
           fontWeight: FontWeight.w800,
         ),),
         Text("6 items",style: GoogleFonts.roboto(
           color: HexColor("6C6A81"),
           decoration: TextDecoration.none,
           fontSize: 16,
           fontWeight: FontWeight.w500,
         ),),
       ],
    );
  }

  _productDetailCard(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
        ProductDetailsCard(
        myText: "Wall Mirror..",
        myPrice: "4589.6",
      ),
          ProductDetailsCard(
            myText: "Wall Mirror..",
            myPrice: "4589.6",
          ),
          ProductDetailsCard(
            myText: "Wall Mirror..",
            myPrice: "4589.6",
          ),
        ],
      ),
    );
  }
}
