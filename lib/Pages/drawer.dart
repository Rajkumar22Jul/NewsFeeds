import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_feed/Pages/notification.dart';
import 'package:news_feed/Pages/settings_page.dart';
import 'about_page.dart';
import 'contact_page.dart';
import 'home_page.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(accountName: Text("Rajkumar"), accountEmail: Text("raj@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("RR"),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          ListTile(
            onTap: (){
              Get.off(HomePage());
            },
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            onTap: (){
              Get.off(SettingsPage());
            },
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          ListTile(
            onTap: (){
              Get.off(AboutPage());
            },
            leading: Icon(Icons.info_outline),
            title: Text("About"),
          ),
          ListTile(
            onTap: (){
              Get.off(ContactPage());
            },
            leading: Icon(Icons.contact_support),
            title: Text("Contant Us"),
          ),
          ListTile(
            onTap: (){
              Get.off(NotificationPage());
            },
            leading: Icon(Icons.notifications),
            title: Text("Notification"),
          )
        ],
      ),
    );
  }
}
