import 'package:flutter/material.dart';

class RoundPicture extends StatelessWidget {
  double picture_roundness;
  double container_roundness;
  String imagePath;

  RoundPicture(
      this.picture_roundness, this.container_roundness, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(picture_roundness),
        child: Image.asset(
          imagePath,
          fit: BoxFit.fitWidth,
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(container_roundness),
      ),
    );
  }
}
