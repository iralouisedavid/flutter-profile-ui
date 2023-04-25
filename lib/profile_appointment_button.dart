import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileAppointmentButton extends StatelessWidget {
  final String? buttonText;
  final Color? buttonColor;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final void Function()? onPressed;

  const ProfileAppointmentButton({
    Key? key,
    this.buttonText,
    this.buttonColor,
    this.fontColor,
    this.fontSize,
    this.fontWeight,
    this.onPressed,
  }) : super(key: key);

  static final void Function() defaultOnPressed = () {};

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed ?? defaultOnPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          buttonText ?? 'Make an Appointment',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: fontColor ?? Colors.white,
              fontWeight: fontWeight ?? FontWeight.w600,
              fontSize: fontSize ?? 18,
            ),
          ),
        ),
      ),
    );
  }
}
