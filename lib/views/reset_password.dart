import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/heading_one.dart';
import 'package:test_emulator/custom_widgets/heading_two.dart';
import 'package:test_emulator/views/login.dart';
import 'package:test_emulator/views/otp_screen.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  double? height;

  double? width;
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Reset Password"),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height! * 0.1,
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OTPScreen()),
                      );
                    },
                    child: Icon(Icons.chevron_left)),
              ),
              Spacer(),
              Spacer(),
              Center(
                  child: H1(
                h1: "Reset Password",
              )),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Please enter your new password and",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "confirm.",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                obscureText: !this._showPassword,
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
                height: 10,
              ),
              Center(
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  elevation: 2.0,
                  minWidth: width! * 0.8,
                  height: 50,
                  color: HexColor("263C32"),
                  child: Text("Reset",
                      style: TextStyle(fontSize: 16.0, color: Colors.white)),
                  onPressed: () {},
                ),
              ),
              Spacer(),
              Spacer(),
              Spacer(),
              Spacer(),
              _textRow(context),
            ],
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
          "Back to ",
          style: GoogleFonts.roboto(
            decoration: TextDecoration.none,
            color: HexColor("979797"),
            fontWeight: FontWeight.w400,
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushReplacement(
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
