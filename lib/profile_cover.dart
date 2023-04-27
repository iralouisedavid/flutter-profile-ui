import 'package:flutter/material.dart';

class ProfileCover extends StatelessWidget {
  const ProfileCover({Key? key, required this.imagePath, this.colorFilter,}) : super(key: key);

  final String? imagePath;
  final ColorFilter? colorFilter;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: imagePath != null && imagePath!.startsWith('http') ? NetworkImage(imagePath!) : AssetImage(imagePath!) as ImageProvider<Object>,
          fit: BoxFit.cover,
          colorFilter: colorFilter, // Apply a black and white filter
        ),
      ),
    );
  }
}
