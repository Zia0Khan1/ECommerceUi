import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesListTile extends StatelessWidget {
 final String? title;
 CategoriesListTile({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,right:8.0),
      child: Card(
        // elevation: 2,
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 7.0, horizontal:
          16.0),
          title: Text(
            title!,
            style: GoogleFonts.roboto(
              fontSize: 16,
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w400,
            ),
          ),
          tileColor: Colors.white,
          trailing: Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}
