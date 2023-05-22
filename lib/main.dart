import 'package:flutter/material.dart';
import 'package:quiz_app/Result.dart';
import 'Question.dart';
import 'Answer.dart';
import 'Result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
   int _qindex = 0;
   int _total = 0;
   void reset(){
     setState((){
       _qindex=0;
       _total=0;
     });
   }
  void count(int x){
    _total +=x ;
    setState((){
      _qindex +=1;
    });
    print(" ${_qindex.toString()}");
    print(" ${_total.toString()}");
  }

  final List<Map<String, Object>> _data = [
    {
      'question': "what is your fav color ?",
      'answers': [
        {'ans': 'yellow', 'score': 10},
        {'ans': 'Red', 'score': 20},
        {'ans': 'Green', 'score': 30},
        {'ans': 'Blue', 'score': 40},
      ],
    },
    {
      'question': "what is your fav animal ?",
      'answers': [
        {'ans': 'Dog', 'score': 40},
        {'ans': 'Fish', 'score': 20},
        {'ans': 'Bird', 'score': 30},
        {'ans': 'Cat', 'score': 10},
      ],
    },
    {
      'question': "what is your fav subject ?",
      'answers': [
        {'ans': 'Math', 'score': 10},
        {'ans': 'English', 'score': 20},
        {'ans': 'French', 'score': 30},
        {'ans': 'science', 'score': 40},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App "),
          centerTitle: true,
        ),
        body: _qindex<_data.length
    ?  Container(
          child: Column(children: [
            Question(_data, _qindex),
            ...(_data[_qindex]['answers'] as List<Map<String, Object>>).map((val) {
              return Answer(() => count(int.parse(val['score'].toString())),
                  val['ans'].toString());
            }).toList(),
          ]),
        )
    : Result(reset,_total),
      ),
    );
  }
}
