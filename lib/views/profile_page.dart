import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_emulator/custom_widgets/categories_list.dart';
import 'package:test_emulator/custom_widgets/heading_one.dart';
import 'package:test_emulator/views/edit_profile_page.dart';
import 'package:test_emulator/views/my_order_page.dart';
import 'package:test_emulator/views/settings_page.dart';

class ProfilePage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   icon: Icon(Icons.chevron_left),
          // ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                  );
                },

                child: ImageIcon(
                  new AssetImage(
                    "assets/images/editprofile.png",
                  ),
                  color: Colors.black,
                  size: 18,
                ),
              ),
            ),
          ],
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Profile",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: height!*0.3,
              width: width,
              color: Colors.white,
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 55,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(55),
                      child: Image(

                        image: AssetImage("assets/images/person.png",
                        ),

                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  H1(h1: "John Deo"),

                  SizedBox(height: 10,),
                  Text("Johndeo123@gmail.com",   style: GoogleFonts.roboto(
                    color:Colors.grey,
                    fontSize: 16,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w300,
                  ),),

                  SizedBox(height: 20,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            InkWell(

              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyOrderPage()),
                );
              },
              child: CategoriesListTile(
                title: "My Order",
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },

              child: CategoriesListTile(
                title: "Settings",
              ),
            ),
            CategoriesListTile(
              title: "Logout",
            ),
          ],
        ));
  }
}
