import 'package:flutter/material.dart';
import 'package:test_emulator/views/product_detail_one.dart';
import 'package:test_emulator/views/product_detail_two.dart';

class WallMirrorScreen extends StatefulWidget {
  const WallMirrorScreen({Key? key}) : super(key: key);

  @override
  State<WallMirrorScreen> createState() => _WallMirrorScreenState();
}

class _WallMirrorScreenState extends State<WallMirrorScreen> {
  bool? toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
        ),
        iconTheme: IconThemeData(

            color: Colors.black
        ),
        title: Text(
          "Wall Mirror",
          style: TextStyle(fontWeight: FontWeight.w800, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: InkWell(
              onTap: (){
                setState(() {
                  toggle = !toggle!;
                });
              },
              child: ImageIcon(  AssetImage(toggle!? "assets/images/grid.png": "assets/images/coolicon.png",

              ),
                color: Colors.black,
                size: 18,

              ),
            ),
          ),
        ],
      ),
      body: toggle!? ProductDetailTwo(): ProductDetailOne(),
    );
  }
}
