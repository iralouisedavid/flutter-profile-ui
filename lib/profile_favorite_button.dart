import 'package:flutter/material.dart';

class ProfileFavoriteButton extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final void Function()? onPressed;

  const ProfileFavoriteButton({
    Key? key,
    this.icon,
    this.iconColor,
    this.onPressed,
  }) : super(key: key);

  static final void Function() defaultOnPressed = () {};

  @override
  Widget build(BuildContext context) {
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
}
