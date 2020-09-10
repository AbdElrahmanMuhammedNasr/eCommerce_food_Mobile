import 'package:ecommercefood/Share/bottomBar.dart';
import 'package:ecommercefood/Share/topBar.dart';
import 'package:ecommercefood/homePage.dart';
import 'package:ecommercefood/productDetails.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(10),
            child: new HomePage(),
          ),
        ),
      ),
    );
  }
}
