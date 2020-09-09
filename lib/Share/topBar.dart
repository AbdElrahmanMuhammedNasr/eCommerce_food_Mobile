import 'package:ecommercefood/Share/ColorsGlopal.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              icon: Icon(
                Icons.line_weight,
                color: blueColor,
              ),
              onPressed: () {
                print('object');
              }),
          Text(
            'Hommey',
            style: TextStyle(
                color: Colors.black.withOpacity(0.8),
                fontSize: 20,
                fontFamily: 'Billabong'),
          ),
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: blueColor,
              ),
              onPressed: () {
                print('object');
              }),
        ],
      ),
    );
  }
}
