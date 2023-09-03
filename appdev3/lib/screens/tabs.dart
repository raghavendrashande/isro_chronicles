import 'package:appdev3/screens/categories.dart';
import 'package:appdev3/screens/meals.dart';
import 'package:flutter/material.dart';
import '../models/meal.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {

final List<Meal> favouritemeals=[];
int selectedpage = 0;

void togglemealfavouritestatus(Meal meal){
      final isexisting = favouritemeals.contains(meal);
      if(isexisting){
        favouritemeals.remove(meal);
      }
      else{
        favouritemeals.add(meal);
      }
}

void SelectedPage(int index){
  setState(() {
    selectedpage=index;
  });
}

  @override
  Widget build(BuildContext context) {

    Widget activepage=const CategoriesScreen();
    var activepagetitle = 'Categories';

    if(selectedpage==1){
      activepage=const Mealsscreen(meals: []);
      activepagetitle='Your Favourites';
    }


    return Scaffold(
      appBar: AppBar(
        title: Text(activepagetitle),
      ),
      body: activepage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedpage,
        onTap: SelectedPage,
        items:const [
           BottomNavigationBarItem(icon: Icon(Icons.set_meal),label: 'Categories'),
           BottomNavigationBarItem(icon: Icon(Icons.favorite),label:'Favourites' )
        ],
      ),
    );
  }
}