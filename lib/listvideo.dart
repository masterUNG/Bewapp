import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enetb/models/job_model.dart';
import 'package:flutter/material.dart';

class ListVideo extends StatefulWidget {
  final String category;

  ListVideo({Key key, this.category}) : super(key: key);

  @override
  _ListVideoState createState() => _ListVideoState();
}

class _ListVideoState extends State<ListVideo> {
//  Field
  String myCategory;

  List<JobModel> jobModels = List();

//Method
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myCategory = widget.category;
    print('myCategory = $myCategory');
    readData();
  }

  Future<void> readData() async {
    String url =
        'https://www.androidthai.in.th/bew/getJobWhereCategory.php?isAdd=true&Category=$myCategory';

    try {
      Response response = await Dio().get(url);
      print('response = $response');

      var result = json.decode(response.data);
      print('result = $result');

      for (var map in result) {
        JobModel jobModel = JobModel.fromMap(map);
        setState(() {
          jobModels.add(jobModel);
        });
      }
    } catch (e) {}
  }

  Widget showImage(int index) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150.0,
      child: Image.network(jobModels[index].pathImage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: jobModels.length,
        itemBuilder: (BuildContext buildContext, int index) {
          return Column(
            children: <Widget>[
              showImage(index),
            ],
          );
        },
      ),
    );
  }
}
