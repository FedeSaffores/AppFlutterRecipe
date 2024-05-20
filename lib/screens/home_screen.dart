import 'package:flutter/material.dart';
import 'package:flutter_application_recepe/Providers/recipe_providers.dart';
import 'package:flutter_application_recepe/screens/add_recipe_screen.dart';
import 'package:flutter_application_recepe/screens/recipe_detail_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddRecipeScreen()),
              );
            },
          )
        ],
      ),
      body: Consumer<RecipeProvider>(builder: (context, recipeProvider, child) {
        return ListView.builder(
          itemCount: recipeProvider.recipe.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(recipeProvider.recipe[index].title),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => RecipeDetalScreen(index: index)),
                  ),
                );
              },
            );
          },
        );
      }),
    );
  }
}
