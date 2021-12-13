import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/button.dart';
import 'package:test_emulator/custom_widgets/heading_one.dart';
import 'package:test_emulator/custom_widgets/heading_two.dart';
import 'package:test_emulator/custom_widgets/textfield.dart';
import 'package:test_emulator/demo_screen.dart';
import 'package:test_emulator/views/dashboard.dart';
import 'package:test_emulator/views/forgot_password.dart';
import 'package:test_emulator/views/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double? height;
  double? width;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Login Screen"),
        // ),
        body: Container(
            height: height,
            width: width,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: H1(
                        h1: "Login",
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Center(
                      child: Text(
                        "Welcome back.",
                        style: GoogleFonts.roboto(
                          color:Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        "Please Sign in to continue",
                        style: GoogleFonts.roboto(
                          color:Colors.black,
                          decoration: TextDecoration.none,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    _column(),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    _row(),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child:    MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0))),
                          elevation:2.0,
                          minWidth: width!*0.9,
                          height: 57,
                          // color: Colors.orangeAccent,
                          color: HexColor("263C32"),
                          child: Text("Login",
                              style: TextStyle(fontSize: 18.0, color: Colors.white)),
                          // onPressed:onPress!(),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DashBoard()),
                            );
                          }
                      ),
                    ),
                  ],
                ),
                Spacer(),
                _textRow(),
                SizedBox(height: 5,)
              ],
            )),
      ),
    );
  }

  _column() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2(
            h2: "Username or Email",
          ),
          SizedBox(
            height: 5,
          ),
          TextFieldWidget(
            hintText: "Johndeo@gmail.com",
          ),
          SizedBox(
            height: 25,
          ),
          H2(
            h2: "Password",
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
                filled: true,
                fillColor: HexColor("#F7F7F7"),
                // fillColor: Colors.red,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.transparent.withOpacity(0.1), width: 2),
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


                prefixIcon:Image(image: AssetImage('assets/images/lockkk.png')),
                // prefixIcon: Icon(Icons.lock_outline_rounded),
                suffixIcon: Icon(

                  Icons.remove_red_eye_outlined,
                  color: Colors.black,
                ),
                hintText: "........."),
          )
        ],
      ),
    );
  }

  _row() {
    //checkbox method
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.grey;
      }
      return Colors.black.withOpacity(0.3);
    }

    return Padding(
      padding: const EdgeInsets.only(left:12.0,right: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(
                checkColor: Colors.white,
                fillColor: MaterialStateProperty.resolveWith(getColor),
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                "Remember me",
                style: GoogleFonts.roboto(
                  color: HexColor("979797"),
                  decoration: TextDecoration.none,
                  // fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
              );
            },
            child: Text("Forgot Password?",
                style: GoogleFonts.roboto(
                  decoration: TextDecoration.underline,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ),
    );
  }

  _textRow() {
    return Row(
      children: [
        Spacer(),
        Text(
          "Don't have an account?",
          style: GoogleFonts.roboto(
            decoration: TextDecoration.none,
            color: HexColor("979797"),
            fontWeight: FontWeight.w400,
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
            );
          },
          child: Text(
            " Sign Up",
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
