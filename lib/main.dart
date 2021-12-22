import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/like_widget.dart';
import 'package:test_emulator/demo_screen.dart';
import 'package:test_emulator/splash_screen.dart';
import 'package:test_emulator/views/add_address_page.dart';
import 'package:test_emulator/views/categories_page.dart';
import 'package:test_emulator/views/dashboard.dart';
import 'package:test_emulator/views/edit_profile_page.dart';
import 'package:test_emulator/views/home_page.dart';
import 'package:test_emulator/views/login.dart';
import 'package:test_emulator/views/my_cart_page.dart';
import 'package:test_emulator/views/my_order_page.dart';
import 'package:test_emulator/views/notification_page.dart';
import 'package:test_emulator/views/order_details_page.dart';
import 'package:test_emulator/views/order_sccess_page.dart';
import 'package:test_emulator/views/product_detail_one.dart';
import 'package:test_emulator/views/product_detail_two.dart';
import 'package:test_emulator/views/product_details.dart';
import 'package:test_emulator/views/profile_page.dart';
import 'package:test_emulator/views/search_page.dart';
import 'package:test_emulator/views/settings_page.dart';
import 'package:test_emulator/views/shipping_address.dart';
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
        backgroundColor: HexColor("E5E5E5"),
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }

}