import 'package:flutter/material.dart';
import 'text_widget.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
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
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? 140, height ?? 30),
        backgroundColor: backGroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 0),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: borderWidth ?? 0,
          ),
        ),
      ),
      child: TextWidget(
        textAlign: TextAlign.center,
        context: context,
        data: buttonText,
        fontWeight: buttonTextfontWeight ?? FontWeight.w300,
        fontSize: buttonTextSize ?? 12,
        letterSpacing: 1,
        color: buttonTextColor,
      ),
    );
  }
}
