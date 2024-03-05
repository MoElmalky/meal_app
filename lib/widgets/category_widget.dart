import 'package:flutter/material.dart';
import 'package:meal_app/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  final Category category;
  final int? index;
  const CategoryWidget(
      {super.key,
      this.index, required this.category});

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
            Navigator.pushNamed(context, "categoryPage",arguments: {
              "category":category
            });
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage(category.image), fit: BoxFit.fill),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.deepPurple.withAlpha(150),
                child: Text(
                  category.name,
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
