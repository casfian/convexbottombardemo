import 'package:flutter/material.dart';
 
class Page0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page 0'),
          backgroundColor: Colors.purple,
        ),
        body: Center(
          child: Container(
            child: Text('Page 0'),
          ),
        ),
      ),
    );
  }
}