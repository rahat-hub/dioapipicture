import 'package:dioapipicture/widgets/texts.dart';
import 'package:flutter/material.dart';

import '../shared/constants/colors.dart';

abstract class Buttons{
  static buttons({text,width = double.infinity,height = 60.0,onPressed,value = 0.0,circularValue = 0.0,colorValue, BorderColor = ConstColors.BLUE}){
    return Padding(
      padding: EdgeInsets.all(value),
      child: MaterialButton(
        minWidth: width,
        height: height,
        onPressed: () => onPressed (),
        color: colorValue,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color:  BorderColor,
          ),
          borderRadius: BorderRadius.circular(circularValue),
        ),
        child: Texts.texts(texts: text),
      ),
    );
  }
  static textButton({ texts, color, align, fontWeight, textSize, onPressed, l=0.0,t=0.0,r=0.0,b=0.0}) {
    return Padding(
      padding: EdgeInsets.fromLTRB(l,t,r,b),
      child: TextButton(
        style: ButtonStyle(alignment: align,),
        onPressed: () => onPressed(),
        child: Texts.texts(texts: texts,colors: color,fontWeight: fontWeight,textSize: textSize),
      ),
    );
  }
}