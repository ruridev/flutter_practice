import 'package:flutter_flame_practice/app03/models/recipe_ingredient_group.dart';

import 'recipe_step.dart';

class Recipe {
  final String _title;
  final String _thumbnail;
  final String _difficulty;
  final String _cookingTime;
  final List<RecipeIngredientGroup> _recipeIngredientGroups;
  final List<RecipeStep> _recipeSteps;

  Recipe(
    this._title,
    this._thumbnail,
    this._difficulty,
    this._cookingTime,
    this._recipeIngredientGroups,
    this._recipeSteps,
  );

  String get title => _title;
  String get thumbnail => _thumbnail;
  String get difficulty => _difficulty;
  String get cookingTime => _cookingTime;
  List<RecipeIngredientGroup> get recipeIngredientGroups =>
      _recipeIngredientGroups;
  List<RecipeStep> get recipeSteps => _recipeSteps;
}
