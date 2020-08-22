import 'package:flutter/material.dart';
import 'package:flutter_appppp/question.dart';
import 'package:flutter_appppp/answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion(){

    setState(() {

      _questionIndex = _questionIndex + 1;

    });

    print('Answer Chosen!');
     print(_questionIndex);

  }

  @override
  Widget build(BuildContext context) {

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'WHat\'s your favorite food?'
    ];


    return MaterialApp(

      home: Scaffold(

        appBar: AppBar(

        ),

        body: Column(
          children: <Widget>[

            //Text(questions.elementAt(questionIndex),),

            Question(questions[_questionIndex]),

            Answer(_answerQuestion),

            Answer(_answerQuestion),

            Answer(_answerQuestion),

          ],
        ),

      ),
    );

  }
}
