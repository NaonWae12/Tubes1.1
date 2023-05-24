import 'package:flutter/material.dart';
// import 'package:unit3c_3/Screen/Home/Participant/home.dart';
import 'Screen/Participant/SplashScreen.dart';
// import 'Screen/Login/LoginPage.dart';
import 'Screen/Participant/PageProgres.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit 3C',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Progres(),
      },
    );
  }
}
