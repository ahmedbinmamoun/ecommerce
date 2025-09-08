import 'package:ecommerce/core/utils/app_colors.dart';
import 'package:ecommerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';


typedef OnValidator = String? Function(String?)?;

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.colorBorderSide = AppColors.whiteColor,
    this.cursorColor,
    this.hintText,
    this.filledColor = AppColors.whiteColor,
    this.hintStyle,
    this.labelText,
    this.labelStyle,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.validator,
    this.keyboardType = TextInputType.text,
    this.isObscureText = false,
    this.obscuringCharacter = '•',
    this.maxLines = 1,

  });
  Color colorBorderSide;
  Color? cursorColor;
  Color? filledColor;
  String? hintText;
  String? labelText;
  TextStyle? hintStyle;
  TextStyle? labelStyle;
  Widget? prefixIcon;
  Widget? suffixIcon;
  TextEditingController controller;
  OnValidator? validator;
  TextInputType? keyboardType;
  bool isObscureText;
  String obscuringCharacter;
  int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: filledColor ?? AppColors.whiteColor,
        enabledBorder: builtOutlinedInputBorder(colorBorderSide: colorBorderSide),
        focusedBorder: builtOutlinedInputBorder(colorBorderSide: colorBorderSide),
        errorBorder: builtOutlinedInputBorder(colorBorderSide: AppColors.redColor),
        focusedErrorBorder: builtOutlinedInputBorder(colorBorderSide: AppColors.redColor),
        hintText: hintText,
        hintStyle: hintStyle ?? AppStyles.light18HintText,
        labelText: labelText,
        labelStyle: labelStyle ?? AppStyles.light18HintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        errorStyle: AppStyles.light16White.copyWith(color: AppColors.redColor),
        

      ),
      
      style: hintStyle,
      cursorColor: cursorColor,
      controller: controller,
      validator: validator,
      keyboardType: keyboardType,
      obscureText: isObscureText,
      obscuringCharacter: obscuringCharacter,

      maxLines: maxLines,
    );
  }

  OutlineInputBorder builtOutlinedInputBorder({required Color colorBorderSide}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: colorBorderSide, width: 1),
    );
  }
}
