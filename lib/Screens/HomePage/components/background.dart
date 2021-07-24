import 'dart:ui';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('homebg.jpg'), fit: BoxFit.cover)),
          ),
          Container(
            constraints: BoxConstraints.expand(),
            padding: EdgeInsets.only(bottom: 10, top: 5, left: 230, right: 10),
            child: Column(
              children: [
                Image.asset(
                  'logo.jpg',
                  height: 170,
                  width: 170,
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ),
          Positioned(top: 0, left: 0, child: Text('')),
          Positioned(bottom: 0, right: 0, child: Text('')),
          child,
        ],
      ),
    );
  }
}
