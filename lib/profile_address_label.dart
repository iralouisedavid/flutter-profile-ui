import 'package:flutter/material.dart';

class ProfileAddressLabel extends StatelessWidget {
  final String? fontFamily;
  final double? fontSize;
  final Color? fontColor;

  ProfileAddressLabel({
    this.fontFamily,
    this.fontSize,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Text(
        'Address',
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.bold,
          color: fontColor ?? Colors.black,
          height: 2,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
