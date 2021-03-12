import 'package:flutter/material.dart';
import 'package:meals_app/category_item.dart';

import './dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20, // Vertical space between columns
        mainAxisSpacing: 20, // Horizontal space between rows
      ),
      children: DUMMY_CATEGORIES
          .map(
            (category) => CategoryItem(
              category.title,
              category.color,
            ),
          )
          .toList(),
    );
  }
}
