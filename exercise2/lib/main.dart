import 'package:flutter/material.dart';
import 'bottom_appBar.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercise 2',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: BottomAppBarDemo(),
    );
  }
}
