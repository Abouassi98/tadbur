import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('welcomebg.jpg'), fit: BoxFit.cover)),
          ),
          Positioned(top: 0, left: 0, child: Text('')),
          Positioned(bottom: 0, left: 0, child: Text('')),
          child,
        ],
      ),
    );
  }
}
