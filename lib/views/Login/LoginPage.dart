import 'package:flutter/material.dart';
import './LoginElements/LoginContainer.dart';
import './LoginElements/RoundPicture.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(33, 33, 33, 100),
      body: ListView(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "WorkOut",
                    style: TextStyle(
                      fontFamily: "Helvetica",
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white,
                    ),
                  ),
                  RoundPicture(300, 300, 20, "assets/images/LoginMuscle.png"),
                  SizedBox(
                    height: 40,
                  ),
                  LoginContainer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
