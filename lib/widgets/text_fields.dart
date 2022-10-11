import 'package:dioapipicture/widgets/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import '../shared/constants/colors.dart';

class TextFieldView{
  static formField({key,validator,name,label,obscureText,inputText,radiusValue,paddingValue,letterSpace,textSize,passwordIcon,onTap}){
    return Padding(
      padding: EdgeInsets.all(paddingValue),
      child: FormBuilderTextField(
        key: key,
        name: name,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: inputText,
        obscureText: obscureText,
        validator: validator,
        style: Texts.textStyles(textSize: textSize,colors: ConstColors.GREY,fontWeight: FontWeight.w300,),
        decoration: InputDecoration(
          filled: true,
          hintText: label,
          hintStyle: Texts.textStyles(textSize: textSize,colors: ConstColors.GREY,fontWeight: FontWeight.w300,letterSpace: letterSpace),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ConstColors.GREY,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(radiusValue),
          ),
          suffix: InkWell(
            child: Icon(passwordIcon, color: Colors.grey,size: 20,),
            onTap: () => onTap(),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radiusValue),
            borderSide: const BorderSide(
              color: ConstColors.GREY,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: ConstColors.GREY,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(radiusValue),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(radiusValue),
          ),
        ),
      ),
    );
  }
}