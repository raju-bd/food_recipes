import 'package:flutter/material.dart';
import 'model/recipe.dart';
class RecipeListPage extends StatelessWidget {
  RecipeListPage({super.key});

  final List<Recipe> recipes = Recipe.getRecipes();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             Text('Food Recipes'),
              Text('Developed by Md. Mahfuzul Amin RAJU', style: TextStyle(color: Colors.lightBlueAccent,fontSize: 12, fontStyle: FontStyle.italic)),
          ],
        ),
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        backgroundColor: Colors.lightBlue,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.fastfood, color: Colors.grey),
            title: Text(recipes[index].title, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(recipes[index].description, style: TextStyle(color: Colors.grey)),
          );
        },
      ),
    );
  }
}