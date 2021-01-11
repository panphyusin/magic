import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text('Pan Phyu Sin'),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
        ),
        body: MagicApp(),
      ),
    );
  }
}

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int magicresult = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
            child: Image.asset('images/ans$magicresult.png'),
            onPressed: () {
              setState(() {
                magicresult = Random().nextInt(5) + 1;
              });
            },
          ))
        ],
      ),
    );
  }
}
