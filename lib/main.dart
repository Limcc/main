import 'package:flutter/material.dart';
import 'package:haha/pages/initial.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: InitialPage(),
    );
  }
}
