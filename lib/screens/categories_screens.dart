import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop/component/categories_button.dart';
import 'package:workshop/screens/test_screen.dart';
import 'package:workshop/src/data.dart';

class CategoriesScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blueGrey,
          child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('Choose type of questions?',style: TextStyle(fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 60),
              CategoriesButton(color: Colors.red, text: 'Political',typeList: sports ),
              SizedBox(height: 20),
              CategoriesButton(color: Colors.black, text: 'Sports',typeList: sports  ,),
              SizedBox(height: 20),
              CategoriesButton(color: Colors.green, text: 'Islamic',typeList:  sports  ,),


            ],
          ),
        ),
      ),
    );
  }
}
