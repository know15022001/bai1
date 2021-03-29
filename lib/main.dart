import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
  title: 'My homepage';
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: homepage(),
    );
  }
}
class homepage extends StatefulWidget {
  @override
  MyState createState() => MyState();
}
class MyState extends State<homepage> {
  int c=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Flutter'),
        backgroundColor: Colors.red,
      ),
      body: Center(

        child: Text('Bạn đã bấm add $c lần'),

      ),
      floatingActionButton: FloatingActionButton(

        onPressed: () {
          setState(() {
            c++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}