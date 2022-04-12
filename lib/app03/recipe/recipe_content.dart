import 'package:flutter/material.dart';

import '../models/recipe_step.dart';

class RecipeContent extends StatelessWidget {
  late List<RecipeStep> recipeSteps;

  RecipeContent({
    Key? key,
    required List<RecipeStep> recipeSteps,
  }) {
    this.recipeSteps = recipeSteps;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> contentsWidgets = [_buildTitle("조리순서")];
    contentsWidgets.addAll(recipeSteps.map((recipeStep) {
      return _buildRecipe(
        recipeStep.title,
        recipeStep.imagePath,
      );
    }).toList());

    return Column(
      children: contentsWidgets,
    );
  }

  Widget _buildTitle(text) {
    return SizedBox(
      height: 100.0,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildRecipe(text, image) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 40.0),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          Image.network(
            image,
            width: 300.0,
          ),
        ],
      ),
    );
  }
}
