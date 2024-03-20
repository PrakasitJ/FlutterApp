import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  LoginContainer();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: 300,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromRGBO(98, 93, 92, 1)),
      child: ListView(
        children: [
          SizedBox(
            height: 7,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 13,
                    ),
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
                SizedBox(
                  width: 10,
                ),
                getTextField("assets/images/Letter.jpg", "Username"),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                getTextFieldWithSuffix("assets/images/Secure.png", "Password",
                    "assets/images/Blind.png"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Forget Password",
                  style: getFont(13),
                  textAlign: TextAlign.left,
                ),
                SizedBox(
                  width: 38,
                ),
                Text(
                  "Create Account",
                  style: getFont(13),
                  textAlign: TextAlign.right,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

SizedBox getTextField(String imgPath, String text) {
  return SizedBox(
      width: 260,
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
            borderSide: BorderSide(color: Colors.white, width: 1.0),
          ),
          labelText: text,
          labelStyle: TextStyle(color: Colors.white),
        ),
        cursorColor: Colors.black,
        cursorErrorColor: Colors.black,
      ));
}

SizedBox getTextFieldWithSuffix(
    String imgPath, String text, String suffixPath) {
  return SizedBox(
      width: 260,
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
              borderSide: BorderSide(color: Colors.white, width: 1.0),
            )),
        cursorColor: Colors.black,
        cursorErrorColor: Colors.black,
      ));
}

TextStyle getFont(double size) {
  return TextStyle(
      color: Colors.white,
      fontFamily: "Helvetica",
      fontWeight: FontWeight.bold,
      fontSize: size);
}
