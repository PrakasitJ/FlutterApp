import 'package:flutter/material.dart';
import './LoginButton.dart';

class LoginContainer extends StatelessWidget {
  LoginContainer();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    if (screenWidth > 400) screenWidth = 400;
    if (screenHeight > 234) screenHeight = 234;

    return Container(
      alignment: Alignment.centerLeft,
      width: screenWidth * 0.7,
      height: screenHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromRGBO(98, 93, 92, 1),
      ),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 13),
                    Text(
                      "Login",
                      style: getFont(26),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: getTextField("assets/images/Letter.jpg", "Username"),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                SizedBox(width: 10),
                Expanded(
                  child: getTextFieldWithSuffix("assets/images/Secure.png",
                      "Password", "assets/images/Blind.png"),
                ),
                SizedBox(width: 10),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SizedBox(width: 8),
                Text(
                  "Forget Password",
                  style: getFont(13),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
                Text(
                  "Create Account",
                  style: getFont(13),
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  width: 2,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: LoginButton(),
            ),
          ),
        ],
      ),
    );
  }
}

SizedBox getTextField(String imgPath, String text) {
  return SizedBox(
    height: 29,
    child: TextField(
      style: getFont(18),
      textAlign: TextAlign.left,
      obscureText: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: -5.0),
        prefixIcon: Image.asset(imgPath),
        border: OutlineInputBorder(gapPadding: 5.0),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0)),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white),
      ),
      cursorColor: Colors.black,
      cursorErrorColor: Colors.black,
    ),
  );
}

SizedBox getTextFieldWithSuffix(
    String imgPath, String text, String suffixPath) {
  return SizedBox(
    height: 29,
    child: TextField(
      style: getFont(18),
      textAlign: TextAlign.left,
      obscureText: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: -5.0),
        border: OutlineInputBorder(gapPadding: 5.0),
        focusedBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        labelText: text,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        prefixIcon: Image.asset(imgPath),
        suffixIcon: Image.asset(suffixPath),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, width: 1.0)),
      ),
      cursorColor: Colors.black,
      cursorErrorColor: Colors.black,
    ),
  );
}

TextStyle getFont(double size) {
  return TextStyle(
    color: Colors.white,
    fontFamily: "Helvetica",
    fontWeight: FontWeight.bold,
    fontSize: size,
  );
}
