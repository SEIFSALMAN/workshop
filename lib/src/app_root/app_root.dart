import 'package:flutter/material.dart';
import 'package:workshop/screens/categories_screens.dart';

class AppRoot extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesScreen(),
    );
  }
}
