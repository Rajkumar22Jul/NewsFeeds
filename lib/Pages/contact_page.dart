import 'package:contactus/contactus.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Contact Us",
        textAlign: TextAlign.start,
      )
      ),
      drawer: MainDrawer(),
        body: ContactUs(
            cardColor: Colors.white,
            textColor: Colors.black,
            logo: AssetImage('assets/images/news_logo.jpeg'),
            email: 'raj@gmail.com',
            companyName: 'News Feed',
            companyColor: Colors.blueAccent,
            dividerThickness: 2,
            phoneNumber: '+918489094282',
            website: 'https://earth.google.com/web/',
            githubUserName: 'Rajkumar22Jul',
            tagLine: 'Demo App for News',
            taglineColor: Colors.blue,
           ),

    );
  }
}