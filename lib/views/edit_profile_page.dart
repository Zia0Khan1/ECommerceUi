import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/country_code_picker.dart';
import 'package:test_emulator/custom_widgets/heading_two.dart';
import 'package:test_emulator/custom_widgets/textfield.dart';

class EditProfilePage extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Material(
      child: Scaffold(
          backgroundColor: HexColor("E5E5E5").withOpacity(0.2),

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
            child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: width,
                      height: height! * 0.3,
                      color: Colors.white,
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
                                  child: Image(
                                    image: AssetImage(
                                      "assets/images/person.png",
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: -1,
                              right: 50,
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: IconButton(
                                  icon: new Image.asset(
                                      'assets/images/Camera.png'),
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
                      height: 10,
                    ),

                    TextFieldWidget(
                      hintText: "John Deo",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    H2(
                      h2: "Email Address",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFieldWidget(
                      hintText: "Johndeo@gmail.com",
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    H2(
                      h2: "Phone Number",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    CountryCodePickerWidget(),
                    // TextFieldWidget(
                    //   hintText: "+1 123456789",
                    //   icon: Icons.tablet_android_sharp,
                    // ),
                    SizedBox(
                      height: height!*0.1,
                    ),
                    // Spacer(),
                    // Spacer(),
                    Center(
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          elevation: 2.0,
                          minWidth: width! * 0.9,
                          height: 57,
                          // color: Colors.orangeAccent,
                          color: HexColor("263C32"),
                          child: Text("Save",
                              style: TextStyle(fontSize: 18.0, color: Colors.white)),
                          // onPressed:onPress!(),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                    // CountryCodePickerWidget(),
                    // Container(
                    //   color: Colors.red,
                    //   width: 150,
                    //   height: 100,
                    //   child: Center(
                    //     child: CountryCodePicker(
                    //       onChanged: print,
                    //       // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    //       initialSelection: 'IT',
                    //       favorite: ['+39', 'FR'],
                    //       // optional. Shows only country name and flag
                    //       showCountryOnly: false,
                    //       showFlag: false,
                    //       // optional. Shows only country name and flag when popup is closed.
                    //       showOnlyCountryWhenClosed: false,
                    //       showDropDownButton: true,
                    //       // closeIcon: Icon(Icons.phone),
                    //       // optional. aligns the flag and the Text left
                    //       alignLeft: false,
                    //
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
          )),
    );
  }
}
// ImageIcon(
// new AssetImage(
// "assets/images/editprofile.png",
// ),
// color: Colors.black,
// size: 18,
// ),
