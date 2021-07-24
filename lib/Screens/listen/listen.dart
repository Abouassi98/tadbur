

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ListenScreen extends StatefulWidget {
  @override
  _ListenScreenState createState() => _ListenScreenState();
}

class _ListenScreenState extends State<ListenScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tadbur App'),
      ),
      body: WebView(
      initialUrl: 'https://flutter.dev',
      )
    );
  }
}
