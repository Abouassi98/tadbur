import 'package:flutter/material.dart';
import 'package:tadbur/Screens/Juzz/components/background.dart';
import 'package:tadbur/components/rounded_button.dart';

class Body extends StatefulWidget {
  @override
  BodyState createState() => BodyState();
}

class BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Background(
        child: Container(
            child: GridView.builder(
                padding:
                    EdgeInsets.only(top: 25, bottom: 25, left: 5, right: 5),
                itemCount: 30,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return new Container(
                    child: new RoundedButton(
                      text: '${index + 1}',
                      press: () {},
                    ),
                  );
                })));
  }
}
