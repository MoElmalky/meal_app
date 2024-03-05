import 'package:flutter/material.dart';
import 'package:meal_app/data/data.dart';
import 'package:meal_app/widgets/category_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const Image(image: AssetImage("assets/brt.png"),
          ),
        ),
        title: const Text("Bremer",style: TextStyle(
          color: Colors.white,
          fontSize: 28,
        ),),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryWidget(
            category: categories[index],
            index: index,
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
