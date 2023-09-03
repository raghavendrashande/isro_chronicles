import 'package:appdev3/models/meal.dart';
import 'package:appdev3/widgets/mealitemtrait.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Mealitem extends StatelessWidget {
  const Mealitem({super.key, required this.meal, required this.onSelectMeal});

  final Meal meal;

  final void Function(Meal meal) onSelectMeal;
  String get complexityText{
    return meal.complexity.name[0].toUpperCase()+meal.complexity.name.substring(1);
  }
  String get moneyText{
    return meal.affordability.name[0].toUpperCase()+meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: (){
          onSelectMeal(meal);
        },
        child: Stack(
          children: [
            FadeInImage(placeholder: MemoryImage(kTransparentImage),
             image:NetworkImage(
                meal.imageUrl
             ),
             fit: BoxFit.cover,
             height: 200,
             width: double.infinity,
            ),
            Positioned(
              bottom:0,
              left:0,
              right:0,
              child: Container(
                color: Colors.black54,
                padding: EdgeInsets.symmetric(vertical: 5, horizontal:44),
                child: Column(
                  children: [
                    Text(
                      meal.title, 
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                      ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Mealitemtrait(icon: Icons.schedule, label: '${meal.duration} mins '),
                        const SizedBox(width: 8),
                        Mealitemtrait(icon: Icons.work, label: complexityText),
                        const SizedBox(width: 8),
                        Mealitemtrait(icon: Icons.attach_money, label: moneyText),
                      ],
                    )

                  ],
                ),
            ))
          ],
        ),
      ),
    );
  }
}