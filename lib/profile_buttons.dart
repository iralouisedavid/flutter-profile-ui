library profile_buttons;
import 'package:flutter/material.dart';

class ProfileButtons {
  const ProfileButtons({Key? key,});
  static final void Function() defaultOnPressed = () {};


  Widget favoriteButton({void Function()? onPressed, IconData? icon, Color? iconColor}) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.5,
          color: iconColor ?? Colors.redAccent,
        ),
      ),
      child: IconButton(
        onPressed: onPressed ?? defaultOnPressed,
        icon: Icon(icon ?? Icons.favorite),
        color: iconColor ?? Colors.redAccent,
      ),
    );
  }

  Widget shareButton({void Function()? onPressed, IconData? icon, Color? iconColor}) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.5,
          color: iconColor ?? Colors.blue,
        ),
      ),
      child: IconButton(
        onPressed: onPressed ?? defaultOnPressed,
        icon: Icon(icon ?? Icons.share),
        color: iconColor ?? Colors.blue,
      ),
    );
  }

  Widget phoneButton({void Function()? onPressed,  IconData? icon, Color? iconColor}) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.5,
          color: iconColor ?? Colors.teal,
        ),
      ),
      child: IconButton(
        onPressed: onPressed ?? defaultOnPressed,
        icon: Icon(icon ?? Icons.phone_rounded),
        color: iconColor ?? Colors.teal,
      ),
    );
  }

  Widget messageButton({void Function()? onPressed,  IconData? icon, Color? iconColor}) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 1.5,
          color: iconColor ?? Colors.deepPurpleAccent,
        ),
      ),
      child: IconButton(
        onPressed: onPressed ?? defaultOnPressed,
        icon: Icon(icon ?? Icons.chat_rounded),
        color: iconColor ?? Colors.deepPurpleAccent,
      ),
    );
  }
}
