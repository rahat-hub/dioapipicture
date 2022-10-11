import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../shared/constants/colors.dart';
import '../shared/constants/font_sizes.dart';

class Texts {
  static texts({texts, colors = ConstColors.TEXTCOLORS, textSize = FontSizes.REGULAR, fontWeight = FontWeight.w400, align, uds = 0.0, lrs = 0.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: lrs, vertical: uds),
      child: Text(
        texts,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
              color: colors, fontSize: textSize, fontWeight: fontWeight),
        ),
        textAlign: align,
      ),
    );
  }

  static textStyles({colors=ConstColors.TEXTCOLORS,textSize=FontSizes.MEDIUM,fontWeight,letterSpace}){
    return  GoogleFonts.poppins(
        textStyle: TextStyle(
          color: colors,
          fontSize: textSize,
          fontWeight: fontWeight,
        )
    );
  }
}