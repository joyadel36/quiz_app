import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final int qindex;
  final List<Map<String,Object>> data;
  Question(this.data,this.qindex);
  var h=70.0,w=400.0;
  @override
  Widget build(BuildContext context) {
      return  Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(5),
        child: Text(
                  data[qindex]['question'].toString()
                  ,
                  textAlign: TextAlign.center,style: TextStyle(fontSize: 30,),
        ),
      );
  }
}