import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function() func;
  final int score;
  Result(this.func,this.score);
  var h=70.0,w=400.0;
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Text(
            "Done !!\n ${score.toString()}"
            ,
            textAlign: TextAlign.center,style: TextStyle(fontSize: 30,),
          ),
          SizedBox(
            width: w,
            height: h,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton.icon(
                  onPressed: func,
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlue),
                      padding: MaterialStateProperty.all(EdgeInsets.all(5)),
                      shape:
                      MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white)))),
                  icon: Icon(Icons.restart_alt_outlined),
                  label: Text("Restart App ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
