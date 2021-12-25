import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/categories_list.dart';
import 'package:test_emulator/views/notification_page.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
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
            "Settings",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            CategoriesListTile(
              title: "Change Password",
            ),
            SizedBox(
              height: 20,
            ),
            CategoriesListTile(
              title: "Change Location",
            ),
            SizedBox(
              height: 20,
            ),
            CategoriesListTile(
              title: "Change Language",
            ),
            SizedBox(
              height: 20,
            ),
            _row("Notifications"),
          ],
        ),
      ),
    );
  }

  _row(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NotificationPage()),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white, ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)),

              contentPadding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 16.0),
              title: Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.w400,
                ),
              ),
              tileColor: Colors.white,

              trailing: Container(
                height: 50,
                width: 70,
                // color: Colors.red,
                child: FlutterSwitch(
                  height: 30,
                  width: 50,
                  activeTextColor: Colors.transparent,
                  inactiveTextColor: Colors.transparent,
                  toggleColor: Colors.white,
                  activeColor: HexColor("263C32"),
                  value: status,
                  onToggle: (val) {
                    setState(() {
                      print("${"status"}");
                      status = val;
                    });
                  },
                  toggleSize: 25,
                  showOnOff: true,
                ),
              ),


            ),
          ),
        ),
      ),
    );
  }
}
