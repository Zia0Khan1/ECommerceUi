import 'package:flutter/material.dart';

class LikeWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(

            color: Colors.white,
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage("assets/images/like.png",
              ),
            )
        ),
      ),
    );
  }
}
