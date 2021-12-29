import 'package:flutter/material.dart';
import 'package:workshop/models/question.dart';

import 'final_screen.dart';

class TestScreen extends StatefulWidget {
  final List<Question> questionList;

  TestScreen({this.questionList});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int index = 0;
  int counter = 0;
  int score = 0;
  bool choice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Question ${index + 1}',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 4)),
                child: Text(
                  widget.questionList[index].question,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                    ),
                    child: Text('True'),
                    onPressed: () {
                      setState(() {
                        checkeingAlgorithm(true);
                      });
                    },
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text('False'),
                    onPressed: () {
                      setState(() {
                        checkeingAlgorithm(false);
                      });

                    },
                  ),
                ],
              )
            ],
          )),
    );
  }

  checkeingAlgorithm(bool userChoice) {





   if(userChoice==widget.questionList[index].answer)
   {
     score++;
   }
   if(counter==widget.questionList.length)
   {
     Navigator.push(
       context,
       MaterialPageRoute(builder: (context) => FinalScreen(score: score,)),
     );
   }

   if(index<widget.questionList.length-2)
   {
     index++;
   }


   counter ++;

      }




}
