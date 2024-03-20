import 'package:flutter/material.dart';
import 'package:basicflutter/controllers/PageList.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageList pageList = PageList();

    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      alignment: Alignment(0.0, -0.6),
      child: ElevatedButton.icon(
        onPressed: () {
          pageList.routeTo(context, "HomePage");
        },
        icon: Icon(
          Icons.login,
          color: Colors.black,
        ),
        label: Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.grey[400],
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(360),
          ),
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        ),
      ),
    );
  }
}
