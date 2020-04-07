import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 115;

class PersonPage extends StatefulWidget {
  @override
  _PersonPageState createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(
        'บุคลากร',
        style: TextStyle(
        fontFamily: fontFam,fontWeight: FontWeight.bold,
        fontSize: 25,),), centerTitle: true,
    backgroundColor: Theme.of(context).primaryColor,
    ),
    );
  }
}
