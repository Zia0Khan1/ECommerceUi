import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:test_emulator/custom_widgets/notification_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

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
            "Notification",
            style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                NotificationCard(
                  title: "Check your Passwords score",
                  text: "Just Now",
                ),
                SizedBox(
                  height: 10,
                ),
                NotificationCard(
                  title: "Order success",
                  text: "2 hours ago",
                  color: HexColor("E2E2E2"),
                  iconColor: Colors.black,
                  image: AssetImage("assets/images/verified.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                NotificationCard(
                  title: "Order arrived",
                  text: "4 hours ago",
                  color: HexColor("E2E2E2"),
                  iconColor: Colors.black,
                  image: AssetImage("assets/images/Parcel.png"),
                ),
                SizedBox(
                  height: 10,
                ),
                NotificationCard(
                  title: "Payment Confirmed",
                  text: "4 hours ago",
                  color: HexColor("E2E2E2"),
                  iconColor: Colors.black,
                  image: AssetImage("assets/images/Cash.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
