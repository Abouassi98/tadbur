import 'package:flutter/material.dart';

class IconCircularNum extends StatelessWidget {
  final int? number;

  IconCircularNum({@required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '$number',
          style: TextStyle(fontFamily: 'Amiri', fontWeight: FontWeight.bold),
        ),
      ),
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      decoration: BoxDecoration(
        color: Color.fromRGBO(212, 175, 55, 1),
        shape: BoxShape.circle,
      ),
    );
  }
}
