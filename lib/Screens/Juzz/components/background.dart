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
          // Container(
          //   constraints: BoxConstraints.expand(),
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //           image: AssetImage('homebg.jpg'), fit: BoxFit.cover)),
          // ),
          Positioned(top: 0, left: 0, child: Text('')),
          Positioned(bottom: 0, right: 0, child: Text('')),
          child,
        ],
      ),
    );
  }
}
