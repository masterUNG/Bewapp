import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 115;

class RoomPage extends StatefulWidget {
  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(
        'ห้องเรียน',
        style: TextStyle(
          fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 25,),), centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
