import 'package:flutter/material.dart';

import 'drawer.dart';

class NotificationPage extends StatefulWidget {
  NotificationPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:Text("Notification",
        textAlign: TextAlign.start,
      )
      ),
      drawer: MainDrawer(),
      body: Center(child: Text("Notifications",textScaleFactor: 2,)),
    );
  }
}
