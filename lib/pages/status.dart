import 'package:flutter/material.dart';
import 'package:haha/data/robot.dart';
import 'package:haha/pages/settings.dart';

class StatusPage extends StatefulWidget {
  StatusPage({Key key, this.robots}) : super(key: key);

  final List<Robot> robots;

  @override
  _StatusPageState createState() => _StatusPageState(robots);
}

class _StatusPageState extends State<StatusPage> {
  List<Robot> robots;

  _StatusPageState(this.robots);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: _moveToSettings,
        ),
        title: Text('내 로봇'),
      ),
      body: ListView(
        children: robots.map((e) => e.toWidget()).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _removeRobot,
        child: Icon(Icons.mic),
      ),
    );
  }

  void _moveToSettings() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SettingsPage()),
    );
  }

  void _removeRobot() {
    final Robot myNewRobot = Robot(
      name: '당근',
      status: '노는 중',
      icon: Icons.backspace,
    );
    setState(() {
      robots.add(myNewRobot);
    });
  }
}
