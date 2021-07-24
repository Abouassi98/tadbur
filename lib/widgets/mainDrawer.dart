import 'package:flutter/material.dart';
import 'package:tadbur/Screens/Juzz/juzz_screen.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            'Search',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.star, size: 26),
          title: Text(
            'Juzz',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {
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
        ListTile(
          leading: Icon(Icons.book, size: 26),
          title: Text(
            'Read',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.hearing, size: 26),
          title: Text(
            'Listen',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          onTap: () {},
        ),
      ],
    ));
  }
}
