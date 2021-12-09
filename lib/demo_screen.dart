import 'package:flutter/material.dart';
import 'package:test_emulator/test_screen.dart';
import 'package:test_emulator/views/categories_page.dart';
import 'package:test_emulator/views/home_page.dart';
import 'package:test_emulator/views/my_cart_page.dart';
import 'package:test_emulator/views/product_detail_one.dart';
import 'package:test_emulator/views/product_detail_two.dart';
import 'package:test_emulator/views/profile_page.dart';
import 'package:test_emulator/views/wishlist_page.dart';

class DemoScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            MaterialButton(
              color: Colors.lightBlueAccent,
              onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );

            },

            child: Text("Home"),),
            MaterialButton(onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WishListPage()),
              );

            },
              color: Colors.lightBlueAccent,
            child: Text("wishlist"),),
            MaterialButton(onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyCartPage()),
              );

            },
              color: Colors.lightBlueAccent,
            child: Text("Cart"),),
            MaterialButton(onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesPage()),
              );

            },
              color: Colors.lightBlueAccent,
            child: Text("Categories"),),
            MaterialButton(onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );

            },
              color: Colors.lightBlueAccent,
            child: Text("Profile"),),
            MaterialButton(onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TestScreen()),
              );

            },
              color: Colors.lightBlueAccent,
            child: Text("grid testing"),),
            MaterialButton(onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailOne()),
              );

            },
              color: Colors.lightBlueAccent,
              child: Text("page one"),),
            MaterialButton(onPressed: (){

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailTwo()),
              );

            },
              color: Colors.lightBlueAccent,
              child: Text("page two"),),
          ],
        ),
      ),
    );
  }
}
