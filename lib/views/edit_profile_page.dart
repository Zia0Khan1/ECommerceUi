import 'package:flutter/material.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/heading_two.dart';
import 'package:test_emulator/custom_widgets/textfield.dart';

class EditProfilePage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.chevron_left),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            "Edit Profile",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: width,
                      height: height! * 0.3,
                      color: Colors.transparent,
                      child: Center(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: height! * 0.1,
                              backgroundColor: Colors.transparent,
                              child: CircleAvatar(
                                radius: height! * 0.07,
                                backgroundColor: Colors.black,
                                child: ClipOval(
                                  child: Image(image: AssetImage("assets/images/person.png",

                                  ),),
                                ),

                              ),
                            ),
                            Positioned(
                              bottom:-1,
                                     right: 50,
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: IconButton(
                                  icon:
                                      new Image.asset('assets/images/Camera.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Container(
                    //   width: width,
                    //   height: height!*0.2,
                    //   // color: Colors.red,
                    //
                    //   child: Stack(
                    //     clipBehavior: Clip.none,
                    //     fit: StackFit.expand,
                    //     children: [
                    //       CircleAvatar(
                    //         // backgroundColor: Colors.orange,
                    //         radius: 65,
                    //         backgroundImage: AssetImage("assets/images/person.png"),
                    //       ),
                    //       Positioned(
                    //         bottom: -20,
                    //         right: 35,
                    //         child:IconButton(
                    //           icon: new Image.asset('assets/images/Camera.png'),
                    //
                    //           onPressed: (){},
                    //         ),
                    //
                    //
                    //         // RawMaterialButton(
                    //         //   onPressed: () {},
                    //         //   elevation: 2.0,
                    //         //   fillColor: Color(0xFFF5F6F9),
                    //         //   child: Icon(
                    //         //     Icons.camera_alt_outlined,
                    //         //     color: Colors.blue,
                    //         //   ),
                    //         //   padding: EdgeInsets.all(15.0),
                    //         //   shape: CircleBorder(),
                    //         // )
                    //
                    //       ),
                    //     ],
                    //   ),
                    //
                    // ),

                    SizedBox(
                      height: 15,
                    ),
                    H2(
                      h2: "User Name",
                    ),
                    SizedBox(
                      height: 2,
                    ),

                    TextFieldWidget(
                      hintText: "John Deo",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    H2(
                      h2: "Email Address",
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    TextFieldWidget(
                      hintText: "Johndeo@gmail.com",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    H2(
                      h2: "Phone Number",
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    TextFieldWidget(
                      hintText: "+1 123456789",
                      icon: Icons.tablet_android_sharp,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              RoundButton(
                btnText: "Save",
              )
            ],
          ),
        ));
  }
}
// ImageIcon(
// new AssetImage(
// "assets/images/editprofile.png",
// ),
// color: Colors.black,
// size: 18,
// ),
