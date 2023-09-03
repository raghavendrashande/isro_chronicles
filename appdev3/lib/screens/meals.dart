import 'package:appdev3/screens/mealdetails.dart';
import 'package:appdev3/widgets/mealitem.dart';
import 'package:flutter/material.dart';
import 'package:appdev3/models/meal.dart';

class Mealsscreen extends StatelessWidget {
  const Mealsscreen({super.key, required this.meals, this.title});

  final String? title;
  final List<Meal> meals;

  void selectMeal(BuildContext context,Meal meal){
    Navigator.push(context, 
    MaterialPageRoute(
      builder: (ctx)=> Mealdetailsscreen(
        meal: meal,
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    Widget content=Center(
      child: 
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Uh oh ... nothing here!!',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground),),
            const SizedBox(height: 16),
            Text('Try selecting different category!',
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onBackground),)
          ],
        ),
      );
    if(meals.isNotEmpty){
      content=ListView.builder(
        itemCount: meals.length,
        itemBuilder: (ctx,index)=>Mealitem(
        meal: meals[index],
        onSelectMeal:(meal){
          selectMeal(context, meal);
        }
      ),
    );
  }
  if(title==null){
    return content;
  }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content

    );
  }
}