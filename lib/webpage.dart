import 'package:flutter/material.dart';

class WebPage extends StatefulWidget {
  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
              color: Colors.white),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: (){},
                  color: Colors.deepOrangeAccent,
                  child: Text('KDTV',style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: (){},
                  color: Colors.red,
                  child: Text('Enet-B',style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: (){},
                  color: Colors.deepOrangeAccent,
                  child: Text('สหกิจศึกษา',style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: (){},
                  color: Colors.red,
                  child: Text('เว็บไซต์ 1',style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: (){},
                  color: Colors.deepOrangeAccent,
                  child: Text('เว็ปไซต์ 2',style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: (){},
                  color: Colors.red,
                  child: Text('เว็ปไซต์ 3',style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: (){},
                  color: Colors.deepOrangeAccent,
                  child: Text('เว็ปไซต์ 4',style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RaisedButton(
                  onPressed: (){},
                  color: Colors.red,
                  child: Text('เว็ปไซต์ 5',style: TextStyle(
                      fontSize: 30.0,
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