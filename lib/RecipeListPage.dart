import 'package:flutter/material.dart';
class RecipeListPage extends StatelessWidget {
  RecipeListPage({super.key});

  final List<String> recipes = [
    'Pasta Carbonara',
    'Caprese Salad',
    'Banana Smoothie',
    'Chicken Stir-Fry',
    'Grilled Salmon',
    'Vegetable Curry',
    'Berry Parfait',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Recipes'),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.restaurant_menu),
            title: Text(recipes[index]),
            subtitle: Text("description")
          );
        },
      ),
    );
  }
}