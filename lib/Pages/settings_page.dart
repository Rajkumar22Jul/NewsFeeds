import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';


import 'drawer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isConnected = false;
  StreamSubscription sub;
  @override
  void initState(){
    super.initState();
    sub = Connectivity().onConnectivityChanged.listen((result) {
      setState(() {
        isConnected = (result != ConnectivityResult.none);
      });
    });
  }
  @override
  void dispose(){
    sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(title:Text("Settings",
          textAlign: TextAlign.start,
        )
        ),
      drawer: MainDrawer(),
        body: Center(
          child: StreamBuilder(
              stream: Connectivity().onConnectivityChanged,
              builder: (BuildContext context,
              AsyncSnapshot<ConnectivityResult> snapshot){
                if(snapshot != null && snapshot.hasData && snapshot.data != ConnectivityResult.none){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/nonet.jpeg',height: 200,alignment: Alignment.center,),
                      SizedBox(
                        height: 10,
                      ),
                      Text("No Internet Connection")
                    ],
                  );
                } else {
                  return Text("Change Settings",textScaleFactor: 2,);
                }
              }
          ),
            // child: isConnected ? Icon(Icons.wifi_off_outlined,size: 50,)
            //     : Text("Change Settings",textScaleFactor: 2,)
        ),
    );
  }
}
