import 'package:asyn_await/homepage.dart';
import 'package:asyn_await/page2.dart';
import 'package:asyn_await/page3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //home: HomePage()
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/page2' : (context) => const Page2(),
        '/page3' : (context) => const Page3(),
      },
    );
  }
}
