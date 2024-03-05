import 'package:flutter/material.dart';
import 'package:meal_app/models/meal_model.dart';

class MealWidget extends StatelessWidget {
  final Meal meal;
  final int? index;
  const MealWidget(
      {super.key,
      this.index, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25 * (index! % 2)),
          topRight: Radius.circular(25 * ((index! + 1) % 2)),
          bottomLeft: Radius.circular(25 * ((index! + 1) % 2)),
          bottomRight: Radius.circular(25 * (index! % 2)),
        ),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "mealPage",arguments: {
              "meal":meal
            });
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Hero(
                tag: 'meal',
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(meal.image), fit: BoxFit.fill),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.deepPurple.withAlpha(150),
                child: Text(
                  meal.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
