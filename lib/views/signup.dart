import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/country_code_picker.dart';
import 'package:test_emulator/custom_widgets/heading_one.dart';
import 'package:test_emulator/custom_widgets/heading_two.dart';
import 'package:test_emulator/custom_widgets/textfield.dart';
import 'package:test_emulator/views/login.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  double? height;

  double? width;

  bool _showPassword = false;
  bool _showConfirmPassword = false;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Signup"),
        // ),
        body: Container(
          // height: height,
          color: Colors.white,
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
            child:SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: height! * 0.1,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: Icon(Icons.chevron_left)),
                      ),
                      Center(
                        child: H1(
                          h1: "Sign Up",
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Center(
                        child: Text(
                          "Welcome! Please Sign Up using your",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "personal details to continue",
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
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
                      SizedBox(
                        height: 15,
                      ),
                      H2(
                        h2: "Password",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: !this._showPassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: HexColor("#F7F7F7"),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                                color: Colors.transparent.withOpacity(0.1),
                                width: 2),
                          ),
                          // fillColor: Colors.red,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                                color: Colors.transparent.withOpacity(0.1),
                                width: 2),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),

                            // borderSide: BorderSide(color: HexColor("#F7F7F7")),
                          ),
                          // prefixIcon: Container(
                          //     margin: EdgeInsets.only(right: 5.0),
                          //     decoration: BoxDecoration(
                          //       // color: Theme.of(context).buttonColor,
                          //       borderRadius: BorderRadius.only(
                          //           topLeft: Radius.circular(8.0),
                          //           bottomLeft: Radius.circular(8.0)),
                          //     ),
                          //     padding: EdgeInsets.all(8.0),
                          //     child: Image.asset(
                          //       'assets/images/lock.png',
                          //       height: 20,
                          //       width: 20,
                          //     )),

                          prefixIcon:
                          Image(image: AssetImage('assets/images/lockkk.png')),
                          // prefixIcon: Icon(Icons.lock_outline_rounded),
                          suffixIcon: IconButton(
                            icon: Icon(
                              this._showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color:
                              this._showPassword ? Colors.black : Colors.black,
                            ),
                            onPressed: () {
                              setState(
                                      () => this._showPassword = !this._showPassword);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      H2(
                        h2: "Confirm Password",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        obscureText: !this._showConfirmPassword,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: HexColor("#F7F7F7"),
                          // fillColor: Colors.red,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                                color: Colors.transparent.withOpacity(0.1),
                                width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                                color: Colors.transparent.withOpacity(0.1),
                                width: 2),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),

                            // borderSide: BorderSide(color: HexColor("#F7F7F7")),
                          ),
                          // prefixIcon: Container(
                          //     margin: EdgeInsets.only(right: 5.0),
                          //     decoration: BoxDecoration(
                          //       // color: Theme.of(context).buttonColor,
                          //       borderRadius: BorderRadius.only(
                          //           topLeft: Radius.circular(8.0),
                          //           bottomLeft: Radius.circular(8.0)),
                          //     ),
                          //     padding: EdgeInsets.all(8.0),
                          //     child: Image.asset(
                          //       'assets/images/lock.png',
                          //       height: 20,
                          //       width: 20,
                          //     )),

                          prefixIcon:
                          Image(image: AssetImage('assets/images/lockkk.png')),
                          // prefixIcon: Icon(Icons.lock_outline_rounded),
                          suffixIcon: IconButton(
                            icon: Icon(
                              this._showConfirmPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color:
                              this._showConfirmPassword ? Colors.black : Colors.black,
                            ),
                            onPressed: () {
                              setState(
                                      () => this._showConfirmPassword = !this._showConfirmPassword);
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "By creating an account or logging in you agree to\n"
                            "our Terms & Conditions and Privacy policy",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.grey,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Center(
                        child: RoundButton(
                          btnText: "Sign Up",
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),

                    ],
                  ),
                  Container(

                    child: _textRow(context),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _textRow(context) {
    return Row(
      children: [
        Spacer(),
        Text(
          "Already have an Account?",
          style: GoogleFonts.roboto(
            decoration: TextDecoration.none,
            color: HexColor("979797"),
            fontWeight: FontWeight.w400,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: Text(
            "Login",
            style: GoogleFonts.roboto(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600,
              color: HexColor("263C32"),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
