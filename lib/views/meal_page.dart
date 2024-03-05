import 'package:flutter/material.dart';
import 'package:meal_app/models/meal_model.dart';

class MealPage extends StatelessWidget {
  const MealPage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    Meal meal = data["meal"];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
          meal.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Hero(
                tag: 'meal',
                child: Stack(
                  children: [
                    Image(
                      image: AssetImage(meal.image),
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [
                          Colors.white.withOpacity(0.1),
                          Colors.white.withOpacity(1)
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 240,
                    child: Text(
                      meal.title,
                      style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepPurple),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$${meal.price}",
                    style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25),
              color: Colors.white,
              child: Text(meal.description,style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black),),
            ),
          )
        ],
      ),
    );
  }
}
