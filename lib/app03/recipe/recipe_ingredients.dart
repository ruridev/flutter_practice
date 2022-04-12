import 'package:flutter/material.dart';
import 'package:flutter_flame_practice/app03/models/recipe_ingredient_group.dart';

class RecipeIngredients extends StatelessWidget {
  late List<RecipeIngredientGroup> recipeIngredientGroups;

  RecipeIngredients({
    Key? key,
    required List<RecipeIngredientGroup> recipeIngredientGroups,
  }) {
    this.recipeIngredientGroups = recipeIngredientGroups;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: recipeIngredientGroups.map((recipeIngredientGroup) {
          return Column(
              children: recipeIngredientGroup.recipeIngredients
                  .map((recipeIngredient) {
            return Container(
              child: Row(
                children: [
                  Text(recipeIngredient.name),
                  Text(recipeIngredient.amount.toString()),
                  Text(recipeIngredient.unit),
                ],
              ),
              margin: const EdgeInsets.only(right: 12.0),
            );
          }).toList());
        }).toList(),
      ),
    );
  }
}
