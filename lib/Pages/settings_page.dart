import 'package:flutter/material.dart';

import 'drawer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:Text("Settings",
          textAlign: TextAlign.start,
        )
        ),
      drawer: MainDrawer(),
        body: Center(
            child:Text("Change Settings",textScaleFactor: 2,)
        ),
    );
  }
}
