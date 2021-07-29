import 'package:flutter/material.dart';
import 'package:tadbur/Screens/HomePage/components/background.dart';
import 'package:tadbur/Screens/Read/read_screen.dart';
import 'package:tadbur/Screens/listen/listen.dart';
import 'package:tadbur/components/rounded_button.dart';

import '../../search_page.dart';

//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: Container(
        padding: EdgeInsets.only(top: 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  padding: EdgeInsets.all(40),
                  children: <Widget>[
                    RoundedButton(
                        text: 'القراءة',
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ReadScreen();
                              },
                            ),
                          );
                        }),
                    RoundedButton(
                      text: "البحث",
                      press: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => SearchPage()));
                      },
                    ),
                    RoundedButton(
                        text: "التعرف على القارئ",
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
            ),
          ],
        ),
      ),
    );
  }
}
