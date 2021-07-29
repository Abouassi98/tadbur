import 'package:flutter/material.dart';
import 'package:tadbur/Screens/Read/read_screen.dart';
import 'package:tadbur/Screens/search_page.dart';

import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      final String _url = 'http://192.168.1.185:8501';
    return Drawer(
        child: Column(
      children: <Widget>[
        Container(
          height: 120,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: Text(
            'Tadbur',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Icon(Icons.search, size: 26),
          title: Text(
            'البحث',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => SearchPage()));
          },
        ),
        ListTile(
          leading: Icon(Icons.book, size: 26),
          title: Text(
            'القراءة',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {
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
        ListTile(
          leading: Icon(Icons.hearing, size: 26),
          title: Text(
            'التعرف على القارئ',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () async{
                 await canLaunch(_url)
                              ? await launch(_url,
                                  forceSafariVC: false,
                                  forceWebView: true,
                                  headers: <String, String>{
                                      'header_key': 'header_value'
                                    })
                              : throw 'Could not launch $_url';
          },
        ),
      ],
    ));
  }
}
