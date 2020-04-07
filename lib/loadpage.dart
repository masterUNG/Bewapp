import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 115;

class LoadPage extends StatefulWidget {
  @override
  _LoadPageState createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ดาวน์โหลด',
          style: TextStyle(
            fontFamily: fontFam,fontWeight: FontWeight.bold,
            fontSize: 25,),), centerTitle: true,),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){},
                  color: Colors.grey,
                  child: Text('เอกสารการศึกษา',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: (){},
                  color: Colors.grey,
                  child: Text('เอกสารแขนงวิชา',style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}