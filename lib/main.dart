import 'package:creativeleaf/constants/colors/home_page.dart';
import 'package:creativeleaf/screens/home_page/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CleverLeaf',
      theme: ThemeData(
        primaryColor: PRIMARYCOLOR,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
