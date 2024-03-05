import 'package:flutter/material.dart';
import 'package:meal_app/data/data.dart';
import 'package:meal_app/models/category_model.dart';
import 'package:meal_app/models/meal_model.dart';
import 'package:meal_app/widgets/meal_widget.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Category category = data["category"];
    List<Meal> categoryMeals = dummyMeal.where((element) {
      return element.categoryId.contains(category.id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(
            category.name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
          ),
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return MealWidget(meal: categoryMeals[index],index: index,);
        },
        itemCount: categoryMeals.length,
        ));
  }
}
