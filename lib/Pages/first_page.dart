// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sec_app/Pages/homepage.dart';
import 'package:sec_app/Pages/profilepage.dart';
import 'package:sec_app/Pages/settingpage.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int selectIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    Profilepage(),
    Settingpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("1st Page"),
        backgroundColor: Colors.blue,
      ),
      body: _pages[selectIndex],
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[100],
        // ignore: prefer_const_constructors
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 48,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Setting"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingpage');
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //currentIndex: selectIndex,
        onTap: _navigateBottomBar,
        items: [
          // home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
