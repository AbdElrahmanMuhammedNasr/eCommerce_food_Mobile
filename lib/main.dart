import 'package:ecommercefood/Share/bottomBar.dart';
import 'package:ecommercefood/Share/topBar.dart';
import 'package:ecommercefood/homePage.dart';
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
            child: Column(
              children: [
                Expanded(flex: 0,child: new TopBar(),),
                Expanded(flex: 9,child: new HomePage(),),
                Expanded(flex: 0,child: new BottomBar(),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
