import 'package:flutter/material.dart';
import 'package:tadbur/Screens/Juzz/components/body.dart';
// import 'package:tadbur/widgets/mainDrawer.dart';

class JuzzScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tadbur App'),
      ),
      body: Body(),
    );
  }
}
