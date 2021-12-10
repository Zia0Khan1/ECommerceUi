import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomButton extends StatelessWidget {
  final String? btnText;
  final Function? onPress;

  CustomButton({this.btnText, this.onPress});

  //this.onPress
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return MaterialButton(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      elevation: 2.0,
      minWidth: width! * 0.9,
      height: 57,
      color: HexColor("263C32"),
      child:
          Text(btnText!, style: TextStyle(fontSize: 18.0, color: Colors.white)),
      onPressed: onPress!(),
      // onPressed: !onPress,
    );
  }
}
