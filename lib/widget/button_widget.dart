import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    this.radius,
    this.context,
    this.height,
    this.width,
    required this.buttonText,
    this.buttonTextfontWeight,
    this.buttonTextColor,
    this.backGroundColor,
    this.onPressed,
    this.buttonTextSize,
    this.borderColor,
    this.borderWidth,
    this.fontSize,
    this.disabledBackgroundColor,
    this.borderRadius,
    this.borderRadiusColor,
  }) : super(key: key);

  final double? radius;
  final BuildContext? context;
  final double? height;
  final double? width;
  final String buttonText;
  final FontWeight? buttonTextfontWeight;
  final Color? buttonTextColor;
  final Color? backGroundColor;
  final double? buttonTextSize;
  final VoidCallback? onPressed;
  final Color? borderColor;
  final double? borderWidth;
  final double? fontSize;
  final Color? disabledBackgroundColor;
  final double? borderRadius;
  final Color? borderRadiusColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backGroundColor ?? Colors.transparent,
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 0,
          ),
        ),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: buttonTextColor ?? Colors.black, // Set text color
          fontSize: buttonTextSize ?? 16, // Set font size
          fontWeight:
              buttonTextfontWeight ?? FontWeight.normal, // Set font weight
        ),
      ),
    );
  }
}
