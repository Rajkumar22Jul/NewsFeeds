import 'package:flutter/material.dart';
import 'package:newsfeed/Constant/styles.dart';

import 'drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("About ",
        textAlign: TextAlign.start,
      )
      ),
      drawer: MainDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
          children:[
            Padding(
              padding: const EdgeInsets.only(top: 18.0,bottom: 18),
              child: Text("Stay up to date on your interests",style: HeadingStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom:20.0),
              child: Text("The For You tab delivers the top stories across all your favourite topics and sources in one place."
                  "You no longer need to search through various news sources across mobile and web. "
                  "Examine in-depth science, entertainment, fashion, sports, cricket updates, finance or whatever else you care about.",style: BodyStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0,bottom: 18),
              child: Text("One story. Numerous perspectives.",style: HeadingStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom:20.0),
              child: Text("With Full coverage you can be informed on how a story is reported from a variety of sources. "
                  "With just a tap you’ll see recent headlines from different sources, videos, local news reports,"
                  " FAQs, news analysis, social commentary and a timeline of events for stories that developed over time.",style: BodyStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0,bottom: 18),
              child: Text("Breaking news",style: HeadingStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom:20.0),
              child: Text("The Headlines tab offers an unfiltered view of top and breaking news articles from around the world and India."
                  " Additional sections let you dig into more on tech news, "
                  "business news, travel news, national and international news, health and more.",style: BodyStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0,bottom: 18),
              child: Text("Discover new sources and topics",style: HeadingStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom:20.0),
              child: Text("The Newsstand tab makes it easy to find and follow the sources that "
                  "you trust, as well as browse and discover new ones.",style: BodyStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0,bottom: 18),
              child: Text("Access your favourite news and magazine subscriptions, together",style: HeadingStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom:20.0),
              child: Text(" If you want to support your favourite news publisher, we’ve made it simple to subscribe with your Google Account. "
                  "This means no more forms, credit card numbers or new passwords. Easily access them all within the same app.",style: BodyStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 18.0,bottom: 18),
              child: Text("A smart news app built for every phone, everywhere",style: HeadingStyle,),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,bottom:20.0),
              child: Text("Google News is designed to meet the needs of users with different phones and levels of connection."

    "  When your connection isn’t strong or you need to save data, Google News will continue to work smoothly by slimming down the size of images and downloading less data."

    "Articles can be downloaded over Wi-Fi to save for reading later when you are offline.",style: BodyStyle,),
            ),

        ],
      ),
    );
  }
}
