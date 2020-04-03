import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(SliderApp());

class SliderApp extends StatelessWidget {
  final PageController ctrl = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carousel App Demo',
      home: SliderHome(),
          );
        }
      }
      
  class SliderHome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ImageCarouse1(),
          );
        }
      }
      
  class ImageCarouse1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Carousel(
      images: [
        new NetworkImage('https://post-phinf.pstatic.net/MjAxODAxMjZfMjE4/MDAxNTE2OTUwMTA4NDQz.8H38FcR90M8nUx6MZwIEfEZI12zkxlbJy7UU7mgPL_cg.z_IrPLg-7iqQJCgI0w1ZFAu0tqDtqTDhe8dHaiXFaZIg.JPEG/iphone-wallpaper13.jpg?type=w1200'),
        new AssetImage('assets/voice.jpg'),
        new NetworkImage('assets/add.jpg'),
        new NetworkImage('assets/command.jpg'),
      ],
    );
  }
}
