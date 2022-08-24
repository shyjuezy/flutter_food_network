import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';

import './models/category.dart';
import './category_item.dart';

class CategoriesScreen extends StatelessWidget {
  // const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES.map((catData) {
        return CategoryItem(
          title: catData.title,
          color: catData.color,
        );
      }).toList(),
      gridDelegate:
          SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200),
    );
  }
}
