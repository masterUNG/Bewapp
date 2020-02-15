import 'package:flutter/material.dart';

class WebPage extends StatefulWidget {
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
//  Field
  List<String> titles = [
    'สถานีโทรทัศน์ระบบดิจิตัล',
    'แขนงวิชา',
    'สหกิจศึกษา',
    'ปริญญานิพนธ์'
  ];
  List<String> urls = ['http://k-dbtv.kmutnb.ac.th/', 'http://broadcast.elec.cit.kmutnb.ac.th/main/en/', 'http://broadcast.elec.cit.kmutnb.ac.th/co-operative/', 'http://broadcast.elec.cit.kmutnb.ac.th/project/index.php'];

//  Method

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('เว็บไซต์'),
      ),
      body:
      Container(
        decoration: BoxDecoration(color: Colors.deepOrange),
        child : Center(
        child: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (BuildContext buildContext, int index) {
            return RaisedButton(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Text(titles[index]),
            );
          },
        ),
        ),
      ),
    );
  }
}
