// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:unit3c_3/Screen/Home/home.dart';
import 'Screen/SplashScreen.dart';
// import 'Screen/Home/homeV2.dart';
import 'Screen/LoginP/LoginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => LoginPage(),
      },
    );
  }
}
