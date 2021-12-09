import 'package:flutter/material.dart';
import 'package:test_emulator/custom_widgets/like_widget.dart';
import 'package:test_emulator/demo_screen.dart';
import 'package:test_emulator/splash_screen.dart';
import 'package:test_emulator/views/categories_page.dart';
import 'package:test_emulator/views/dashboard.dart';
import 'package:test_emulator/views/home_page.dart';
import 'package:test_emulator/views/login.dart';
import 'package:test_emulator/views/my_cart_page.dart';
import 'package:test_emulator/views/product_detail_one.dart';
import 'package:test_emulator/views/product_detail_two.dart';
import 'package:test_emulator/views/product_details.dart';
import 'package:test_emulator/views/search_page.dart';
import 'package:test_emulator/views/signup.dart';
import 'package:test_emulator/views/wall_mirror_screen.dart';
import 'package:test_emulator/views/wishlist_page.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashBoard(),
    );
  }

}