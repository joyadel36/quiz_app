import 'package:flutter/material.dart';


class Answer extends StatelessWidget{
  final String str;
  final Function() func;
  Answer(this.func,this.str);
  var h=70.0,w=400.0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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

            icon: Icon(Icons.arrow_circle_right_outlined),
            label: Text(
            str ,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            )),
      ),
    );
  }

}

