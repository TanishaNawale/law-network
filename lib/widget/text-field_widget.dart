import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.inputFormatters,
    this.cursorColor,
    this.hintText,
    this.fontWeight,
    this.fontSize,
    this.color,
  }) : super(key: key);

  final String? hintText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Color? cursorColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      cursorColor: cursorColor ?? Theme.of(context).primaryColor,
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      autofocus: true,
      style: GoogleFonts.kumbhSans(
        fontWeight: fontWeight,
        color: color ?? Theme.of(context).primaryColor,
        fontSize: fontSize,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        hintStyle: GoogleFonts.kumbhSans(
          fontWeight: fontWeight,
          color: color ?? Theme.of(context).primaryColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
