import 'package:ecommercefood/Share/ColorsGlopal.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(5),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'Search for dish '),
              onSubmitted: (val) {},
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Categories',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(color: blueColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 85,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        cat('kawaii-steak'),
                        cat('paella'),
                        cat('pizza-five-eighths'),
                        cat('sandwich'),
                        cat('brigadeiro'),
                        cat('ice'),
                        cat('cherry'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(color: blueColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      recomm(context, 'p1', 'grep'),
                      recomm(context, 'p2', 'Juice'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Sales',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "See All",
                        style: TextStyle(color: blueColor),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      recomm(context, 'p3', 'Pizza'),
                      recomm(context, 'p3', 'Pizza'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget cat(image) {
  return Container(
    width: 70,
    margin: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[300].withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: InkWell(
      onTap: () {
        print('object');
      },
      child:
          new Image.asset('images/${image}.png', width: 100.0, height: 100.0),
    ),
  );
}

Widget recomm(context, image, name) {
  return Container(
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey[300].withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
          offset: Offset(0, 3),
        ),
      ],
    ),
    margin: EdgeInsets.all(5),
    child: Column(
      children: [
        Container(
          height: 100,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "images/${image}.jpg",
                width: 150,
              )),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "${name}",
          style: TextStyle(fontSize: 25),
        ),
        SizedBox(
          height: 20,
        ),
        Text("20 EGY")
      ],
    ),
  );
}
