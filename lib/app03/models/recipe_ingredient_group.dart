import 'recipe_ingredient.dart';

class RecipeIngredientGroup {
  final String _name;
  final List<RecipeIngredient> _recipeIngredients;

  RecipeIngredientGroup(
    this._name,
    this._recipeIngredients,
  );

  String get name => _name;
  List<RecipeIngredient> get recipeIngredients => _recipeIngredients;
}
