import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndicatorWidget extends StatelessWidget {
  final String? status;
  final Color? color;

  IndicatorWidget({this.status, this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          status!,
          style: GoogleFonts.roboto(
            fontSize: 12,
            color: color,
            decoration: TextDecoration.none,
            fontWeight: FontWeight.w600,
          ),
        ),
        Radio(
          // materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          groupValue: null,
          activeColor: color,
          onChanged: (Null? value) {},
          value: null,
        )
      ],
    );
  }
}
