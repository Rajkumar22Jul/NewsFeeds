import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


import 'Constant/connectivity_porvider.dart';
import 'Pages/home_page.dart';
import 'Pages/splash_screen.dart';

void main() async {
  await init();
  runApp(MyApp());
}

Future init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}
// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ConnectivityProvider(),
          child: HomePage(),
        ),
      ],
      child: GetMaterialApp(
        title: 'News Feed',
          theme: ThemeData(
            //primarySwatch: Colors.green,
          ),
          home: SplashScreenPage(),
          debugShowCheckedModeBanner: false,
      ),
    );
  }
}
