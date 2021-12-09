import 'package:flutter/material.dart';
import 'package:test_emulator/custom_widgets/categories_list.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Categories",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
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
      body: Column(
       children: [
         SizedBox(height: 15,),
         CategoriesListTile(
           title: "Wall Mirror",
         ),
         SizedBox(height: 10,),
         CategoriesListTile(
           title: "Wooden Wall Hanging",
         ),SizedBox(height: 10,),
         CategoriesListTile(
           title: "Table Lamps",
         ),SizedBox(height: 10,),
         CategoriesListTile(
           title: "Name Sign",
         ),


       ],
      ),
    );
  }
}
