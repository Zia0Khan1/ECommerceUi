import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/views/categories_page.dart';
import 'package:test_emulator/views/home_page.dart';
import 'package:test_emulator/views/my_cart_page.dart';
import 'package:test_emulator/views/profile_page.dart';
import 'package:test_emulator/views/wall_mirror_screen.dart';
import 'package:test_emulator/views/wishlist_page.dart';

enum _SelectedTab { home, favorite, cart, search, person }

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var _selectedTab = _SelectedTab.home;
  late List<Widget> _pages;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  void initState() {
    _pages = <Widget>[
      HomePage(),
      WishListPage(),
      MyCartPage(),
      CategoriesPage(),
      ProfilePage(),
    ];
    super.initState();
  }

  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery
        .of(context)
        .size
        .height;
    width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        children: _pages,
        index: _selectedTab.index,
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 7),
        child: DotNavigationBar(
          // backgroundColor: HexColor("F3F3F3"),
          // margin: EdgeInsets.only(left: 5, right: 5),
          enableFloatingNavBar: false,
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.transparent,
          itemPadding: EdgeInsets.only(top:0.0,bottom: 0),
          // itemPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 0),
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.transparent,

          // EdgeInsetsGeometry ?
          // marginR = const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
          // EdgeInsetsGeometry ?
          // paddingR = const EdgeInsets.only(bottom: 5, top: 10),
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [

            /// Home
            DotNavigationBarItem(

              icon: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: _selectedTab.index == 0
                      ? HexColor("263C32")
                      : Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(

                        new AssetImage(

                          "assets/images/myHome.png",

                        ),
                        color: _selectedTab.index==0?Colors.white : HexColor("CBCBCB"),
                        // color: Colors.white,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      _selectedTab.index == 0
                          ? Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                      )
                          : SizedBox(),
                    ],
                  )),
              selectedColor: Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: _selectedTab.index == 1
                      ? HexColor("263C32")
                      : Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        new AssetImage(
                          "assets/images/myLike.png",
                        ),
                        color: _selectedTab.index==1?Colors.white : HexColor("CBCBCB"),
                        // color: Colors.white,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      _selectedTab.index == 1
                          ? Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                      )
                          : SizedBox(),
                    ],
                  )),
              selectedColor: Color(0xff73544C),
            ),

            /// Cart
            DotNavigationBarItem(
              icon: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: _selectedTab.index == 2
                      ? HexColor("263C32")
                      : Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        new AssetImage(
                          "assets/images/myCart.png",
                        ),
                        color: _selectedTab.index==2 ?Colors.white : HexColor("CBCBCB"),
                        // color: Colors.white,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      _selectedTab.index == 2
                          ? Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                      )
                          : SizedBox(),
                    ],
                  )),
              selectedColor: Color(0xff73544C),
            ),

            /// Search
            DotNavigationBarItem(
              icon: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: _selectedTab.index == 3
                      ? HexColor("263C32")
                      : Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        new AssetImage(
                          "assets/images/myRect.png",
                        ),
                        color: _selectedTab.index==3?Colors.white : HexColor("CBCBCB"),
                        // color: Colors.white,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      _selectedTab.index == 3
                          ? Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                      )
                          : SizedBox(),
                    ],
                  )),
              selectedColor: Color(0xff73544C),
            ),


            ///Profile/person
            DotNavigationBarItem(
              icon: CircleAvatar(
                  radius: 30.0,
                  backgroundColor: _selectedTab.index == 4
                      ? HexColor("263C32")
                      : Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ImageIcon(
                        new AssetImage(
                          "assets/images/myProfile.png",
                        ),
                        color: _selectedTab.index==4?Colors.white : HexColor("CBCBCB"),
                        // color: Colors.white,
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      _selectedTab.index == 4
                          ? Container(
                        height: 4,
                        width: 4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.transparent,
                            ),
                            borderRadius:
                            BorderRadius.all(Radius.circular(20))),
                      )
                          : SizedBox(),
                    ],
                  )),
              selectedColor: Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }
}
