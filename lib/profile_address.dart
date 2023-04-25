import 'package:flutter/material.dart';

class ProfileAddress extends StatelessWidget {
  final String? addressText;
  final String? fontFamily;
  final double? fontSize;
  final Color? fontColor;

  ProfileAddress({
    this.addressText,
    this.fontFamily,
    this.fontSize,
    this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Text(
        addressText ?? '35th flr., The Orient Square Bldg.\nF. Ortigas Jr. road, Ortigas Center\nPasig City\nMetro Manila\n1600',
        style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize ?? 18,
          fontWeight: FontWeight.normal,
          color: fontColor ?? Colors.grey,
          height: 2,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
