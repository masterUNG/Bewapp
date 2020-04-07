import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 115;

class ManualPage extends StatefulWidget {
  @override
  _ManualPageState createState() => _ManualPageState();
}

class _ManualPageState extends State<ManualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('คู่มือการใช้งาน',
        style: TextStyle(
        fontFamily: fontFam,fontWeight: FontWeight.bold,
        fontSize: 25,),),centerTitle: true, backgroundColor: PrimaryColor,),

    );
  }
}

