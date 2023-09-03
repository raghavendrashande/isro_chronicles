import 'package:appdev3/models/meal.dart';
import 'package:flutter/material.dart';

class  Mealdetailsscreen extends StatelessWidget {
  const Mealdetailsscreen({super.key,required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.favorite))
        ],
        title: Text(meal.title),
      ),
      body:SingleChildScrollView(
       child:Column(
        children: [
          Image.network(
            meal.imageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 14,),
          
          Text('Ingredients',style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold
            ),
          ),
          for(final ingredient in meal.ingredients)
          Text(ingredient,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onBackground
            ),),
            const SizedBox(height: 14,),
          Text('Steps',style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.primary,
            fontWeight: FontWeight.bold
            ),
          ),
          for(final steps in meal.steps)
          Padding(
            padding:const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Text(steps,
          textAlign:TextAlign.center,
          style:Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onBackground
               ),
            ),
          )
        ],
      ),
    ) 
    );
  }
}