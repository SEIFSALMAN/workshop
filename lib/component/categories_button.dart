import 'package:flutter/material.dart';
import 'package:workshop/screens/test_screen.dart';



class CategoriesButton extends StatelessWidget {
final text;
final color;
final typeList;

CategoriesButton({this.text, this.color,this.typeList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ElevatedButton(

        style:ElevatedButton.styleFrom(
          primary: color,

        ),

        child: Container(
          alignment: Alignment.center,
            width: double.infinity,
            child: Text(text , style: TextStyle(fontSize: 40,),)),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TestScreen(questionList: typeList,)),
          );
        },
      ),
    );
  }
}
