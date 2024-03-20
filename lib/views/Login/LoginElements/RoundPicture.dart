import 'package:flutter/material.dart';

class RoundPicture extends StatelessWidget {
  final double pictureWidth;
  final double pictureHeight;
  final double containerRoundness;
  final String imagePath;

  RoundPicture(this.pictureWidth, this.pictureHeight, this.containerRoundness, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: pictureWidth,
      height: pictureHeight,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(containerRoundness),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
