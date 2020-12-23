import 'package:daily_meal/models/meal.dart';
import 'package:daily_meal/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;

  FavoritesScreen(this.favoriteMeals);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    if (widget.favoriteMeals.isEmpty){
      return Center(
        child: Text('You have no Favorites yet - start adding some!'),
      );
    } else{
      return ListView.builder(
        itemBuilder: (cxt, index) {
          return MealItem(
            id: widget.favoriteMeals[index].id,
            title: widget.favoriteMeals[index].title,
            complexity: widget.favoriteMeals[index].complexity,
            duration: widget.favoriteMeals[index].duration,
            affordability: widget.favoriteMeals[index].affordability,
            imageUrl: widget.favoriteMeals[index].imageUrl,
          );
        },
        itemCount: widget.favoriteMeals.length,
      );

    }
  }
}
