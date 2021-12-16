import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/OtpWidget.dart';
import 'package:test_emulator/custom_widgets/heading_one.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:test_emulator/views/forgot_password.dart';
import 'package:test_emulator/views/reset_password.dart';


class OTPScreen extends StatelessWidget {
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {


    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: Text("Verification Code"),),
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
                          MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                        );
                      },
                      child: Icon(Icons.chevron_left)),
                ),
                Spacer(),
                Center(
                    child: H1(
                      h1: "Verification Code",
                    )),  SizedBox(
                  height: 5,
                ),
                Center(
                  child: Text(
                    "Please enter the verification Code we sent",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "lto your number.",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(height: 25,),
OtpWidget(),
                // OtpTextField(
                //   numberOfFields: 4,
                //   borderColor: HexColor("1C1C1C"),
                //   //set to true to show as box or false to show as dash
                //   showFieldAsBox: true,
                //   fillColor: Colors.white,
                //   enabledBorderColor: HexColor("1C1C1C"),
                //   focusedBorderColor: HexColor("263C32"),
                //   cursorColor: Colors.transparent,
                //   //runs when a code is typed in
                //   onCodeChanged: (String code) {
                //     //handle validation or checks here
                //   },
                //   onSubmit: (String verificationCode){
                //     showDialog(
                //         context: context,
                //         builder: (context){
                //           return AlertDialog(
                //             title: Text("Verification Code"),
                //             content: Text('Code entered is $verificationCode'),
                //           );
                //         }
                //     );
                //   }, // end onSubmit
                // ),
                SizedBox(height: 25,),
                Center(
                  child:  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0))),
                    elevation:2.0,
                    minWidth: width!*0.8,
                    height: 50,
                    color: HexColor("263C32"),
                    child: Text("Verify",
                        style: TextStyle(fontSize: 16.0, color: Colors.white)),
                    onPressed: (){

                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ResetPasswordScreen()),
                      );
                    },


                  ),
                ),
SizedBox(height: 10,),
_textRow(context),
                Spacer(),
                Spacer(),
                Spacer(),

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
          "Did you don't get code? ",
          style: GoogleFonts.roboto(
            decoration: TextDecoration.none,
            color: HexColor("979797"),
            fontWeight: FontWeight.normal,
          ),
        ),
        InkWell(
          onTap: (){
          },
          child: Text(
            "Resend Code",
            style: GoogleFonts.roboto(
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
              color: HexColor("263C32"),
            ),
          ),
        ),
        Spacer(),
      ],
    );
  }
}
