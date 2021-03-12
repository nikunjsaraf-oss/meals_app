import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Category chosen will be displayed here',
        ),
      ),
      body: Center(
        child: Text(
          'Category\'s recipe',
        ),
      ),
    );
  }
}
