import 'package:flutter/material.dart';
import 'flag.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'India Flag',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Happy Republic Day'),
        ),
        body: Center(
          child: IndiaFlag(),
        ),
      ),
    );
  }
}
