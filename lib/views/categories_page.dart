import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/categories_list.dart';
import 'package:test_emulator/views/notification_page.dart';
import 'package:test_emulator/views/wall_mirror_screen.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("E5E5E5").withOpacity(0.2),
      appBar: AppBar(
        title: Text(
          "Categories",
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
      body: Column(
       children: [
         SizedBox(height: 15,),
         InkWell(

           onTap: (){
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => WallMirrorScreen()),
             );
           },
           child: CategoriesListTile(
             title: "Wall Mirror",
           ),
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
