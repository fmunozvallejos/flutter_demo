import 'package:flutter/material.dart';
import 'package:demo/screens/dga_screen.dart';
import 'package:demo/screens/header_menu.dart';
import 'package:demo/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JobFinder',
      home: MainScreen(),
      theme: ThemeData(
        primaryColor: Color(0xFF5F5FFF),
        highlightColor: Color(0XFFB7B7D2),
      ),
    );
  }
}