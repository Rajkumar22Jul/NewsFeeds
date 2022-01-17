import 'package:flutter/material.dart';
import 'package:newsfeed/Components/customListTile.dart';
import 'package:newsfeed/Model/article_model.dart';
import 'package:newsfeed/Pages/drawer.dart';
import 'package:newsfeed/Services/api_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("News App", style: TextStyle(color: Colors.black)),
          backgroundColor: Colors.blue
      ),
      drawer: MainDrawer(),
      body: FutureBuilder(
        future: client.getArticle(),
        builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
          if (snapshot.hasData) {
            List<Article>? articles = snapshot.data;
            return ListView.builder(
                itemCount: articles?.length,
                itemBuilder: (context, index) => customListTile(articles![index], context)
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}