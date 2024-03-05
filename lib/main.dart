import 'package:flutter/material.dart';
import 'package:meal_app/views/category_page.dart';
import 'package:meal_app/views/home_page.dart';
import 'package:meal_app/views/meal_page.dart';

main(){
  runApp(const MealApp());
}

class MealApp extends StatelessWidget {
  const MealApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "homePage":(context) => const HomePage(),
        "categoryPage":(context) => const CategoryPage(),
        "mealPage":(context) => const MealPage(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}