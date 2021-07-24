import 'package:flutter/material.dart';
import 'package:tadbur/Screens/HomePage/homePage_screen.dart';
import 'package:tadbur/Screens/Login/login_screen.dart';
import 'package:tadbur/Screens/Signup/signup_screen.dart';
import 'background.dart';
import 'package:tadbur/components/rounded_button.dart';
import 'package:tadbur/constants.dart';

//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("WELCOME TO TADBUR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white)),
            SizedBox(height: size.height * 0.05),
            // SvgPicture.asset(
            //   "assets/icons/chat.svg",
            //   height: size.height * 0.45,
            // ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(
                "OR",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              ),
            ),
            RoundedButton(
              text: "VISIT OUR APP",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
