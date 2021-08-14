import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  List data = ['Ali', 'Abu', 'Ben', 'Caspian'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(data[index]),
              );
            }),
      ),
    );
  }
}
