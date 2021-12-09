import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/heading_one.dart';
import 'package:test_emulator/custom_widgets/heading_two.dart';
import 'package:test_emulator/custom_widgets/textfield.dart';
import 'package:test_emulator/views/login.dart';
import 'package:test_emulator/views/otp_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    String myText ="Login";
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Forgot Password Screen"),
        // ),
        body: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: height!*0.1,
                  child: InkWell(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
                      },
                      child: Icon(Icons.chevron_left)),
                ),
                Spacer(),
                // Spacer(),
                Center(
                    child: H1(
                  h1: "Forgot Password",
                )),  SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    "Please enter your email and we will send you a",
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
                    "link to update your password.",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
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
                  height: 20,
                ),
                Center(
                  child:  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    elevation:2.0,
                    minWidth: width!*0.8,
                    height: 50,
                    color: HexColor("263C32"),
                    child: Text("Submit",
                        style: TextStyle(fontSize: 16.0, color: Colors.white)),
                    onPressed: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => OTPScreen()),
                      );
                    },
                    // onPressed: () {
                    //   Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => AddressPage()),
                    //   );
                    // }
                  ),
                ),
                Spacer(),
                Spacer(),
                Spacer(),

                Center(child:_textRow(context)),
              ],
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
          "Back to ",
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
