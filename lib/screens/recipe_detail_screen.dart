import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_recepe/Providers/recipe_providers.dart';
import 'package:provider/provider.dart';

class RecipeDetalScreen extends StatelessWidget {
  final int index;

  RecipeDetalScreen({required this.index});

  @override
  Widget build(BuildContext context) {
    final recipe = Provider.of<RecipeProvider>(context).getRecipe(index);

    return Scaffold(
        appBar: AppBar(
          title: Text(recipe.title),
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(recipe.description),
        ));
  }
}
