import 'package:flutter/material.dart';
import 'package:flutter_application_recepe/models/recipe.dart';

class RecipeProvider with ChangeNotifier {
  List<Recipe> _recipes = [];
  List<Recipe> get recipe => _recipes;

  void addRecipe(Recipe recipe) {
    _recipes.add(recipe);
    notifyListeners();
  }

  Recipe getRecipe(int index) {
    return _recipes[index];
  }
}
