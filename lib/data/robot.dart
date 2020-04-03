import 'package:flutter/material.dart';

class Robot {
  final String name;
  final String status;

  final IconData icon;

  const Robot({this.name, this.status, this.icon});

  ListTile toWidget() {
    return ListTile(
      leading: Icon(icon),
      title: Text('$name: $status'),
    );
  }
}

class RobotLogin {
  final String ip;
  final String password;

  const RobotLogin({this.ip, this.password});
}
