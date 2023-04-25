import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    required this.radius,
    required this.imagePath,
  }) : super(key: key);

  final String? imagePath;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 60,
      backgroundImage: imagePath != null && imagePath!.startsWith('http') ? NetworkImage(imagePath!) : AssetImage(imagePath!) as ImageProvider<Object>,
      child: imagePath != null && imagePath!.startsWith('http')
          ? const Center(child: CircularProgressIndicator())
          : null,
    );
  }
}

