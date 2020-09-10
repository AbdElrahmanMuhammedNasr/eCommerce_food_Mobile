import 'package:ecommercefood/Share/ColorsGlopal.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  static int selected = 2;

  @override
  Widget build(BuildContext context) {
    void select(int number) {
      setState(() {
        selected = number;
      });
    }

    return Container(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 3, color: selected == 1? blueColor : Colors.transparent)),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.home,
                  color: blueColor.withOpacity(selected != 1 ? 0.3 : 1),
                ),
                onPressed: () {
                  select(1);
                }),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 3, color: selected == 2 ? blueColor : Colors.transparent)),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.location_searching,
                  color: blueColor.withOpacity(selected != 2 ? 0.3 : 1),
                ),
                onPressed: () {
                  select(2);
                }),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 3, color: selected == 3 ? blueColor : Colors.transparent)),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: blueColor.withOpacity(selected != 3 ? 0.3 : 1),
                ),
                onPressed: () {
                  select(3);
                }),
          ),
          Container(
             decoration: BoxDecoration(
              border: Border(top: BorderSide(width: 3, color: selected == 4 ? blueColor : Colors.transparent)),
            ),
            child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: blueColor.withOpacity(selected != 4 ? 0.3 : 1),
                ),
                onPressed: () {
                  select(4);
                }),
          ),
        ],
      ),
    );
  }
}
