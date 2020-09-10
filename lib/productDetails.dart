import 'package:ecommercefood/Share/ColorsGlopal.dart';
import 'package:ecommercefood/Share/topBar.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int numberOfProduct = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                new TopBar(
                  type: 'details',
                ),
                Text(
                  "Meaty Pizza",
                  style: TextStyle(fontSize: 50, fontFamily: 'Billabong'),
                ),
                Text(
                  "with beaf, and mushrom",
                  style: TextStyle(fontSize: 20, fontFamily: 'Raleway'),
                ),
                CircleAvatar(
                  radius: 120,
                  backgroundImage: AssetImage("images/p3.jpg"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        color: Colors.redAccent,
                        icon: Icon(Icons.arrow_downward),
                        onPressed: () {
                          setState(() {
                            if (numberOfProduct <= 1) {
                            } else {
                              numberOfProduct--;
                            }
                          });
                        }),
                    Text("${numberOfProduct}",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    IconButton(
                        color: Colors.blueAccent,
                        icon: Icon(Icons.arrow_upward),
                        onPressed: () {
                          setState(() {
                            if (numberOfProduct > 5) {
                            } else {
                              numberOfProduct++;
                            }
                          });
                        }),
                  ],
                ),
                Divider(
                  color: Colors.black26,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Size"),
                        Text(
                          "Large",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Weight"),
                        Text(
                          "200g",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text("Price"),
                        Text(
                          "200",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black26,
                ),
                Align(
                    child: Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )),
                Container(
                  height: 90,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ingredients("mushroom"),
                      ingredients("carrot"),
                      ingredients("paprika"),
                      ingredients("potato"),
                      ingredients("onion"),
                      ingredients("tomato"),
                      ingredients("cherry"),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black26,
                ),
                RaisedButton(
                  color: blueColor,
                  colorBrightness: Brightness.dark,
                  onPressed: () {
                    print('object');
                  },
                  child: Text('Order'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget ingredients(image) {
  return Container(
    width: 70,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[300].withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      children: [
        new Image.asset('images/${image}.png', width: 100.0, height: 55.0),
        Text(
          '${image}',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
