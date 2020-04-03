import 'package:flutter/material.dart';
import 'package:haha/data/robot.dart';
import 'package:haha/pages/newbie.dart';
import 'package:haha/pages/status.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _moveToNextDelayed(context);
    return Scaffold(
      body: Center(
        child: Image.network(
            "https://www.google.com/images/branding/googlelogo/2x/googlelogo_color_272x92dp.png"),
      ),
    );
  }

  void _moveToNextDelayed(final BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1000), () {
      final robots = _tryGetRobots();
      if (robots == null) {
        _moveToNewbie(context);
      } else {
        _moveToStatus(context, robots);
      }
    });
  }

  void _moveToNewbie(final BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => NewbiePage(),
      ),
    );
  }

  void _moveToStatus(final BuildContext context, final List<Robot> robots) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => StatusPage(
          robots: robots,
        ),
      ),
    );
  }

  List<Robot> _tryGetRobots() {
    return null;
    /*return [
      Robot(
        name: '옥수수',
        status: '치킨 먹는 중',
        icon: Icons.airplay,
      ),
    ];*/
  }
}
