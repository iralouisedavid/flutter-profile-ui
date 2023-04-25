import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  final String? nameText;
  final String? fontFamily;
  final double? fontSize;
  final Color? fontColor;

  ProfileName({
    this.nameText,
    this.fontFamily,
    this.fontSize,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        nameText ?? 'Iconic Menswear',
        style: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w500,
          fontSize: fontSize ?? 22,
          color: fontColor ?? Colors.black,
        ),
      ),
    );
  }
}
