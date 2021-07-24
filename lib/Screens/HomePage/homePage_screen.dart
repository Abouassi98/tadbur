import 'package:flutter/material.dart';
import 'package:tadbur/Screens/HomePage/components/body.dart';
import 'package:tadbur/widgets/mainDrawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tadbur App',
        ),
      ),
      drawer: MainDrawer(),
      body: Body(),
    );
  }
}
