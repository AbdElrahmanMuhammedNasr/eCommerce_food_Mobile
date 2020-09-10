import 'package:ecommercefood/Share/ColorsGlopal.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  String type;
  TopBar({this.type});

  @override
  _TopBarState createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.type == "home"
              ? IconButton(
                  icon: Icon(
                    Icons.line_weight,
                    color: blueColor,
                  ),
                  onPressed: () {
                    print('object');
                  })
              : IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: blueColor,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
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
