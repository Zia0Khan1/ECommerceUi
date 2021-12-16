import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class CountryCodePickerWidget extends StatelessWidget {
  double? height;
  double? width;

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          color: HexColor("F7F7F7"),
          border:
              Border.all(color: Colors.transparent.withOpacity(0.1), width: 2),
          borderRadius: new BorderRadius.circular(20)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: ImageIcon(new AssetImage(
              "assets/images/Phone.png",
            )),
          ),
          Expanded(
            flex: 2,
            child: CountryCodePicker(
              onChanged: print,
// Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
              initialSelection: 'IT',
              favorite: ['+39', 'FR'],
// optional. Shows only country name and flag
              showCountryOnly: false,
              showDropDownButton: true,

// optional. Shows only country name and flag when popup is closed.
              showOnlyCountryWhenClosed: false,
// optional. aligns the flag and the Text left
              alignLeft: false,
            ),
          ),
          Expanded(
              flex: 9,
              child: TextField(
                decoration: new InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(
                        left: 15, bottom: 11, top: 11, right: 15),
                    hintText: "1235648"),
              )),
        ],
      ),
    );
  }

  void _onCountryChange(CountryCode countryCode) {
    //Todo : manipulate the selected country code here
    print("New Country selected: " + countryCode.toString());
  }
}

//
// CountryCodePicker(
// onChanged: _onCountryChange,
// // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
// initialSelection: 'IT',
// favorite: ['+39', 'FR'],
// // optional. Shows only country name and flag
// showCountryOnly: false,
// showFlag: false,
// // optional. Shows only country name and flag when popup is closed.
// showOnlyCountryWhenClosed: false,
// showDropDownButton: true,
// // closeIcon: Icon(Icons.phone),
// // optional. aligns the flag and the Text left
// alignLeft: false,
// ),
