import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_item.dart';

import '../data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 5 / 4,
        crossAxisSpacing: 20, // Vertical space between columns
        mainAxisSpacing: 20, // Horizontal space between rows
      ),
      children: DUMMY_CATEGORIES
          .map(
            (category) => CategoryItem(
              category.id,
              category.title,
              category.color,
            ),
          )
          .toList(),
    );
  }
}
