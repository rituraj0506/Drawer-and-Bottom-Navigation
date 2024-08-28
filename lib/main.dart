import 'package:flutter/material.dart';
import 'package:sec_app/Pages/first_page.dart';
import 'package:sec_app/Pages/homepage.dart';
import 'package:sec_app/Pages/settingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
      routes: {
        'firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingpage': (context) => Settingpage(),
      },
    );
  }
}
