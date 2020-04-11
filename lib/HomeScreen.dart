import 'package:enetb/MenuOnlineScreen.dart';
import 'package:enetb/detailnews.dart';
import 'package:enetb/personpage.dart';
import 'package:enetb/qrpage.dart';
import 'package:enetb/roompage.dart';
import 'package:enetb/subpage.dart';
import 'package:enetb/webpage.dart';
import 'package:enetb/workpage.dart';
import 'package:flutter/material.dart';
import 'package:enetb/FirstScreen.dart';
import 'package:enetb/ProfileScreen.dart';
import 'package:enetb/calendara.dart';
import 'package:enetb/manualpage.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
import 'datapage.dart';
import 'loadpage.dart';
import 'mappage.dart';


const PrimaryColor = const Color(0xFFFF6B00);
double mainPadding = 10.0;
double eachPadding = 5.0;
double imageWidth = 115;
double fontSizeButt = 16;
String fontFam = 'Quark';

String urlSche =
    "http://klogic.kmutnb.ac.th:8080/kris/tess/dataQuerySelector.jsp?query=studentTab";
String urlExam = "http://cit.kmutnb.ac.th/examination/";

class HomeScreen extends StatefulWidget {

  HomeScreen({
    @required this.userId,
    @required this.type,

  });
  final userId;
  final type;

  @override
  HomeScreentState createState() => new HomeScreentState(userId == null ? '0' : userId,type);

}

class HomeScreentState extends State<HomeScreen> {


  HomeScreentState(this.userId, this.type);  //constructor
  final userId;
  final type;

  onPressMenuOnline (context) {
    print(type);
    if(type == 'student'){
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) { return new MenuOnlineScreenStudent();
      }));

    }else if(type == 'teacher') {
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
        return new MenuOnlineScreenTeacher();
      }));
    }else{
      Navigator.of(context).pop();
    }
  }

  checkLogin () {
    if(userId == '0'){
      Navigator.of(context)
          .push(MaterialPageRoute<Null>(builder: (BuildContext context) { return new FirstScreen();
      }));
      return false;
    }
    return true;
  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(
        appBar: AppBar(
          title: Text(

            'หน้าหลัก',
            style: TextStyle(

              fontFamily: fontFam,fontWeight: FontWeight.bold,
              fontSize: 25,

            ),
          ),
          leading: userId != '0' ? Padding(
            padding: EdgeInsets.only(left: 12),
            child: IconButton(icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
                  return new ProfileStudentScreen(userId : userId);
                }));
              }, // omitting onPressed makes the button disabled
            ),
          ) : null,
          centerTitle: true,
          backgroundColor: PrimaryColor,
        ),


        body: Container(
          margin: EdgeInsets.fromLTRB(5.0,30.0,10.0,5.0),
          padding: EdgeInsets.all(mainPadding),
          child: Table(
            children: [
              TableRow(
                  children: [
                    Container(
                        padding: EdgeInsets.all(eachPadding),
                        child: Column(
                          children:<Widget>[
                            FlatButton(onPressed: () {
                              Navigator.of(context).push(
                                  MaterialPageRoute<Null>(builder: (BuildContext context) {
                                    return new WebViewScreen(
                                      urlString: urlSche,
                                      titleString: 'ตารางเรียน',
                                    );
                                  }));
                            }, child: Image.asset('assets/images/study.png',width: imageWidth,),),
                            Text('ตารางเรียน' ,
                              style: TextStyle(
                                fontFamily: fontFam,fontWeight: FontWeight.bold,
                                fontSize: fontSizeButt,
                                color: PrimaryColor,)
                              ,)

                          ],

                        )
                    ),

                    Container(
                        padding: EdgeInsets.all(eachPadding),
                        child: Column(
                          children: <Widget>[
                            FlatButton(onPressed: () {
                              MaterialPageRoute materialPageRoute =
                              MaterialPageRoute(builder: (BuildContext buildContext) {
                                return CalendaraPage();
                              });
                              Navigator.of(context).push(materialPageRoute);
                            }, child: Image.asset('assets/images/calendar.png',width: imageWidth,),),
                            Text('ปฏิทิน' ,
                              style: TextStyle(
                                fontFamily: fontFam,fontWeight: FontWeight.bold,
                                fontSize: fontSizeButt,
                                color: PrimaryColor,)
                              ,)
                          ],
                        )
                    ),
                    Container(
                        padding: EdgeInsets.all(eachPadding),
                        child: Column(
                          children: <Widget>[
                            FlatButton(onPressed: () {
                              MaterialPageRoute route =
                              MaterialPageRoute(builder: (BuildContext context) {
                                return WebPage();
                              });
                              Navigator.of(context).push(route);
                            }, child: Image.asset('assets/images/web.png',width: imageWidth,),),
                            Text('เว็บไซต์' ,
                              style: TextStyle(
                                fontFamily: fontFam,fontWeight: FontWeight.bold,
                                fontSize: fontSizeButt,
                                color: PrimaryColor,)
                              ,)
                          ],
                        )
                    )
                  ]
              ),

              TableRow(
                  children: [
                    Container(
                        padding: EdgeInsets.all(eachPadding),
                        child: Column(
                          children: <Widget>[
                            FlatButton(onPressed: () {
                              MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return SubPage();});
                              Navigator.of(context).push(route);
                            }, child: Image.asset('assets/images/vr.png',width: imageWidth,),),
                            Text('วิชาที่เปิดสอน' ,
                              style: TextStyle(
                                fontFamily: fontFam,fontWeight: FontWeight.bold,
                                fontSize: fontSizeButt,
                                color: PrimaryColor,)
                              ,)
                          ],
                        )
                    ),
                    Container(
                      padding: EdgeInsets.all(eachPadding),
                      child: Column(
                        children: <Widget>[
                          FlatButton(onPressed: () {MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return PersonPage();});
                          Navigator.of(context).push(route);
                          }, child: Image.asset('assets/images/prof.png',width: imageWidth,),),
                          Text('บุคลากร' ,
                            style: TextStyle(
                              fontFamily: fontFam,fontWeight: FontWeight.bold,
                              fontSize: fontSizeButt,
                              color: PrimaryColor,)
                            ,)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(eachPadding),
                      child: Column(
                        children: <Widget>[
                          FlatButton(onPressed: () {
                            MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return RoomPage();});
                            Navigator.of(context).push(route);
                          }, child: Image.asset('assets/images/room.png',width: imageWidth,),),
                          Text('ห้องเรียน' ,
                            style: TextStyle(
                              fontFamily: fontFam,fontWeight: FontWeight.bold,
                              fontSize: fontSizeButt,
                              color: PrimaryColor,)
                            ,)
                        ],
                      ),
                    )
                  ]
              ),

              TableRow(
                  children: [
                    Container(
                      padding: EdgeInsets.all(eachPadding),
                      child: Column(
                        children: <Widget>[
                          FlatButton(onPressed: () {
                            MaterialPageRoute route =
                            MaterialPageRoute(builder: (BuildContext context) {
                              return WorkPage();
                            });
                            Navigator.of(context).push(route);
                          }, child: Image.asset('assets/images/work.png',width: imageWidth,),),
                          Text('ผลงาน' ,
                            style: TextStyle(
                              fontFamily: fontFam,fontWeight: FontWeight.bold,
                              fontSize: fontSizeButt,
                              color: PrimaryColor,)
                            ,)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(eachPadding),
                      child: Column(
                        children: <Widget>[
                          FlatButton(onPressed: () {
                            MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return DataPage();});
                            Navigator.of(context).push(route);
                          }, child: Image.asset('assets/images/data.png',width: imageWidth,),),
                          Text('ข้อมูลแขนง' ,
                            style: TextStyle(
                              fontFamily: fontFam,fontWeight: FontWeight.bold,
                              fontSize: fontSizeButt,
                              color: PrimaryColor,)
                            ,)
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.all(eachPadding),
                        child:  Column(
                          children: <Widget>[
                            FlatButton(onPressed: () {
                              MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return MapPage();});
                              Navigator.of(context).push(route);
                            }, child: Image.asset('assets/images/map.png',width: imageWidth,),),
                            Text('แผนที่' ,
                              style: TextStyle(
                                fontFamily: fontFam,fontWeight: FontWeight.bold,
                                fontSize: fontSizeButt,
                                color: PrimaryColor,)
                              ,)
                          ],
                        )
                    )
                  ]
              ),

              TableRow(
                  children: [
                    Container(
                      padding: EdgeInsets.all(eachPadding),
                      child: Column(
                        children: <Widget>[
                          FlatButton(onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute<Null>(builder: (BuildContext context) {
                                  return new WebViewScreen(
                                    urlString: urlExam,
                                    titleString: 'คลังข้อสอบเก่า',
                                  );
                                }));
                          }, child: Image.asset('assets/images/test.png',width: imageWidth,),),
                          Text('คลังข้อสอบเก่า' ,
                            style: TextStyle(
                              fontFamily: fontFam,fontWeight: FontWeight.bold,
                              fontSize: fontSizeButt,
                              color: PrimaryColor,)
                            ,)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(eachPadding),
                      child: Column(
                        children: <Widget>[
                          FlatButton(onPressed: () => {
                            this.checkLogin() && this.onPressMenuOnline(context)
                          }, child: Image.asset('assets/images/service.png',width: imageWidth,),),
                          Text('บริการออนไลน์' ,
                            style: TextStyle(
                              fontFamily: fontFam,fontWeight: FontWeight.bold,
                              fontSize: fontSizeButt,
                              color: PrimaryColor,)
                            ,)
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(eachPadding),
                      child: Column(
                        children: <Widget>[
                          FlatButton(onPressed: () {
                            MaterialPageRoute route = MaterialPageRoute(builder: (BuildContext context){return LoadPage();});
                            Navigator.of(context).push(route);
                          }, child: Image.asset('assets/images/load.png',width: imageWidth,),),
                          Text('ดาวน์โหลด' ,
                            style: TextStyle(
                              fontFamily: fontFam,fontWeight: FontWeight.bold,
                              fontSize: fontSizeButt,
                              color: PrimaryColor,)
                            ,)
                        ],
                      ) ,
                    )
                  ]
              )
            ],
          ),
        )
    );

  }
}
