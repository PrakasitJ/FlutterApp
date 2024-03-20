import 'package:flutter/material.dart';
import 'package:basicflutter/views/Login/LoginElements/RoundPicture.dart';

class BioTab extends StatefulWidget {
  const BioTab({super.key});
  @override
  State<BioTab> createState() => _BioTabState();
}

class _BioTabState extends State<BioTab> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > 400) screenWidth = 400;

    return Container(
      alignment: Alignment.center,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: RoundPicture(
                  screenWidth * 0.6,
                  screenWidth * 0.6,
                  100,
                  "assets/images/Hook3.webp",
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Bio: (inspiration)",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: RoundPicture(
                  screenWidth * 0.2, 
                  screenWidth * 0.2,
                  100,
                  "assets/images/Hook3.webp",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
