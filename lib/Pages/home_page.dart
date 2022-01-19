import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:news_feed/Components/customListTile.dart';
import 'package:news_feed/Model/article_model.dart';
import 'package:news_feed/Services/api_service.dart';


import 'drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();
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
      appBar: AppBar(
          title: Text("News App", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.blue
      ),
      drawer: MainDrawer(),
      body:  StreamBuilder(
          stream: Connectivity().onConnectivityChanged,
          builder: (BuildContext context,
              AsyncSnapshot<ConnectivityResult> snapshot){
            if(snapshot != null && snapshot.hasData && snapshot.data != ConnectivityResult.none){
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/nonet.jpeg',height: 200,alignment: Alignment.center,),
                  SizedBox(
                    height: 10,
                  ),
                  Text("No Internet Connection")
                ],
              );
            } else {
              return FutureBuilder(
                future: client.getArticle(),
                builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
                  if (snapshot.hasData) {
                    List<Article> articles = snapshot.data;
                    return ListView.builder(
                        itemCount: articles?.length,
                        itemBuilder: (context, index) => customListTile(articles[index], context)
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              );
            }
          }
      ),

    );
  }
}