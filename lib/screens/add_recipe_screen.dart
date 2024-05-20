import 'package:flutter/material.dart';
import 'package:flutter_application_recepe/Providers/recipe_providers.dart';
import 'package:flutter_application_recepe/models/recipe.dart';
import 'package:provider/provider.dart';

class AddRecipeScreen extends StatefulWidget {
  @override
  _AddRecipeScreenState createState() => _AddRecipeScreenState();
}

class _AddRecipeScreenState extends State<AddRecipeScreen> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Recipe'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Titulo'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  final title = _titleController.text;
                  final description = _descriptionController.text;

                  if (title.isNotEmpty && description.isNotEmpty) {
                    Provider.of<RecipeProvider>(context, listen: false)
                        .addRecipe(
                            Recipe(title: title, description: description));
                    Navigator.pop(context);
                  }
                },
                child: Text('Add')),
          ],
        ),
      ),
    );
  }
}
