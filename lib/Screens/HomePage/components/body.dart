import 'package:flutter/material.dart';
import 'package:tadbur/Screens/HomePage/components/background.dart';
import 'package:tadbur/Screens/Read/read_screen.dart';
import 'package:tadbur/Screens/listen/listen.dart';
import 'package:tadbur/components/rounded_button.dart';
import 'package:tadbur/Screens/Juzz/juzz_screen.dart';

import '../../search_page.dart';

//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Container(
        padding: EdgeInsets.only(top: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundedButton(
              text: "Search",
              press: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => SearchPage()));
              },
            ),
            RoundedButton(
              text: "Juzz",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return JuzzScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "Read",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ReadScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
                text: "Listen",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ListenScreen();
                      },
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
