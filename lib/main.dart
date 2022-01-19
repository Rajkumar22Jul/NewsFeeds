import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'Pages/home_page.dart';
import 'Pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'News Feed',
        theme: ThemeData(
          //primarySwatch: Colors.green,
        ),
        home: SplashScreenPage(),
        debugShowCheckedModeBanner: false,
    );
  }
}
