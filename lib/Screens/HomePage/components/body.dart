import 'package:flutter/material.dart';
import 'package:tadbur/Screens/HomePage/components/background.dart';
import 'package:tadbur/Screens/Read/read_screen.dart';

import 'package:tadbur/components/rounded_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../search_page.dart';

//import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  final String _url = 'http://192.168.1.185:8501';
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
                        press: () async {
                          await canLaunch(_url)
                              ? await launch(_url,
                                  forceSafariVC: false,
                                  forceWebView: true,
                                  headers: <String, String>{
                                      'header_key': 'header_value'
                                    })
                              : throw 'Could not launch $_url';
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
