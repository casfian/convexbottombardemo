import 'package:convexbottombardemo/page0.dart';
import 'package:convexbottombardemo/page1.dart';
import 'package:convexbottombardemo/page2.dart';
import 'package:convexbottombardemo/page3.dart';
import 'package:convexbottombardemo/page4.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 2;

  List pages = [Page0(), Page1(), Page2(), Page3(), Page4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_currentindex],
        bottomNavigationBar: ConvexAppBar(
            style: TabStyle.reactCircle,
            backgroundColor: Colors.purple,
            items: [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.map, title: 'Discovery'),
              TabItem(icon: Icons.add, title: 'Add'),
              TabItem(icon: Icons.message, title: 'Message'),
              TabItem(icon: Icons.people, title: 'Profile'),
            ],
            initialActiveIndex: 2, //optional, default as 0
            onTap: (int i) {
              setState(() {
                _currentindex = i;
              });
            }));
  }
}
