import 'package:flutter/material.dart';
import 'package:test_emulator/custom_widgets/grid_card.dart';

class ProductDetailTwo extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {

    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
      //       child: Icon(
      //         Icons.menu,
      //         color: Colors.black,
      //         size: 28.0,
      //       ),
      //     ),
      //   ],
      // ),
      body:Container(
        // color: Colors.grey.withOpacity(0.3),
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(height: 20,),
GridCard(),
SizedBox(height: 10,),
GridCard(),
              SizedBox(height: 10,),
GridCard(),
              SizedBox(height: 10,),
GridCard(),
            ],
          ),
        ),
      ) ,

    );
  }
}
