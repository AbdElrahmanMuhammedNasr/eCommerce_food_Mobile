import 'package:ecommercefood/Share/bottomBar.dart';
import 'package:ecommercefood/Share/topBar.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Expanded(
                    flex: 0,
                    child: new TopBar(
                      type: "noti",
                    )),
                Expanded(
                    flex: 9,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                          singleNotification(),
                        ],
                      ),
                    )),
                Expanded(flex: 0, child: new BottomBar()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget singleNotification() {
  return Row(
    children: [
      Container(
        margin: EdgeInsets.all(10),
        color: Colors.blue[100],
        width: 400,
        child: ListTile(
          title: Text('Tamer ALi'),
          subtitle: Text('Rice'),
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage('images/p1.jpg'),
          ),
          trailing: Container(
            width: 100,
            child: Row(
              children: [
                IconButton(
                    icon: Icon(
                      Icons.check_circle,
                      color: Colors.green[200],
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
