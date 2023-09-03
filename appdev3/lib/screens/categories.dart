import 'package:appdev3/models/category.dart';
import 'package:appdev3/screens/meals.dart';
import 'package:appdev3/widgets/category_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:appdev3/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category1 category){
    final filteredmeals= dummyMeals
    .where((meal) => meal.categories.contains(category.id))
    .toList();
    
    Navigator.push(context,
    MaterialPageRoute(
      builder: (ctx)=> Mealsscreen(
        meals: filteredmeals, 
        title: category.title,)));
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
        padding:const EdgeInsets.all(4),
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        children:  [
          for(final category in availableCategories)
          CategoryGridItem(
          category: category,
          onselectcategory: () {
            _selectCategory(context,category);
          },
          )
        ],
    );
  }
}