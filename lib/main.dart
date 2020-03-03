import 'package:flutter/material.dart';
import 'package:hello_world/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Phare",
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
      ),
      home: HomePage(),
    );
  }
}
