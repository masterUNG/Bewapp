import 'package:enetb/models/job_model.dart';
import 'package:flutter/material.dart';

class PlayVideo extends StatefulWidget {
  final JobModel jobModel;

  PlayVideo({Key key, this.jobModel}) : super(key: key);

  @override
  _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {

//  Field
  JobModel _jobModel;

//Method
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _jobModel = widget.jobModel;
  }

  Widget titleAppBar(){
    return Text(_jobModel.name);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: titleAppBar(),),
    );
  }
}
