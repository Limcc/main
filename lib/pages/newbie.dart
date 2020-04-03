import 'package:flutter/material.dart';

class NewbiePage extends StatefulWidget {
  NewbiePage({Key key}) : super(key: key);

  @override
  _NewbiePageState createState() => _NewbiePageState();
}

class _NewbiePageState extends State<NewbiePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('todo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}
