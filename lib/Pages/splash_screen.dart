
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_page.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Get.off(HomePage());
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/news_logo.jpeg',height: 200,alignment: Alignment.center,),
            SizedBox(
              height: 25,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            )
          ],
        ),
      ),
    );
  }
}

