import 'package:flutter/material.dart';
import 'package:tadbur/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color;
  const RoundedButton({
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    //this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.6,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              //color: textColor,
              fontSize: 20,
              fontFamily: 'Amiri',
            ),
          ),
        ),
      ),
    );
  }
}
