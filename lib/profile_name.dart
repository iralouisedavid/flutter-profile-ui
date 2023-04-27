import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  final String? nameText;
  final String? fontFamily;
  final double? fontSize;
  final Color? fontColor;
  final Color? backgroundColor;

  ProfileName({
    this.nameText,
    this.fontFamily,
    this.fontSize,
    this.fontColor,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundLuminance = Theme.of(context).colorScheme.background.computeLuminance();
    final textColor = backgroundLuminance < 0.5 ? Colors.white : (fontColor ?? Colors.black);

    return Center(
      child: Text(
        nameText ?? 'Iconic Menswear',
        style: TextStyle(
          fontFamily: fontFamily,
          fontWeight: FontWeight.w600,
          fontSize: fontSize ?? 22,
          color: textColor ?? Colors.black,
        ),
      ),
    );
  }
}
