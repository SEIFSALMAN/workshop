import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {

  final score;


  FinalScreen({this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
    body: Center(child: Text('Your Score is $score' , style: TextStyle(fontSize: 40),)),
    );
  }
}
