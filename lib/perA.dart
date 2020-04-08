import 'package:flutter/material.dart';

const PrimaryColor = const Color(0xFFFF6B00);
String fontFam = 'Quark';
double imageWidth = 350;

class PerA extends StatefulWidget {
  @override
  _PerAState createState() => _PerAState();
}

class _PerAState extends State<PerA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(
        'อาจารย์ประจำ',
        style: TextStyle(
          fontFamily: fontFam,fontWeight: FontWeight.bold,
          fontSize: 25,),), centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            color: Colors.deepOrange,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(onPressed: () {

                }
                  , child: Image.asset('assets/images/t1.png',width: imageWidth,),),


                FlatButton(onPressed: () {

                }
                  , child: Image.asset('assets/images/t2.png',width: imageWidth,),),


                FlatButton(onPressed: () {

                }
                  , child: Image.asset('assets/images/t3.png',width: imageWidth,),),


                FlatButton(onPressed: () {

                }
                  , child: Image.asset('assets/images/t4.png',width: imageWidth,),),


                FlatButton(onPressed: () {

                }
                  , child: Image.asset('assets/images/t5.png',width: imageWidth,),),
              ],
            ),
          )
        ],
      ),

    );
  }
}
