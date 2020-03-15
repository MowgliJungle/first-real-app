import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // 2 classes cuz this class can be rebuild while MyAppState is persistent
  @override
  State<StatefulWidget> createState() {
    //createState is a method that doesn't take any arg. but returns a State object that is connected to a StatefulWidget
    // TODO: implement createState
    return MyAppState();
  }
}

// hahah

class MyAppState extends State<MyApp> {
  // state is generic type -> angel brackets, MyApp is a pointer
  var questionIndex = 0; // dynamic variable as property (class wide)
  void answerQuestion() {
    setState(() {
      // setState tells flutter that when button is pressed it should basically rerender app
      // setState: calls build() again, forces flutter to rebuild (parts) of the UI ; updates particular widget (only text changed)
      questionIndex = questionIndex + 1;
    });
    print(questionIndex); // method for onPressed, takes no arg.
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text(
                "Answer 1",
              ),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text(
                "Answer 2",
              ),
              onPressed: () => print("Answer 2 chosen"),
            ),
            RaisedButton(
              child: Text(
                "Answer 3",
              ),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
