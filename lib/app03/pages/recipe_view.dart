import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/recipe.dart';
import '../recipe/recipe_content.dart';
import '../recipe/recipe_ingredients.dart';
import '../recipe/recipe_summary_short.dart';
import '../recipe/recipe_thumbnail.dart';
import '../recipe/recipe_title.dart';
import '../recipe/recipe_view_count.dart';
import '../repositories/recipe_repository.dart';

final recipeProvider = StateNotifierProvider((ref) {
  return RecipeSelector();
});

class RecipeSelector extends StateNotifier<Recipe> {
  RecipeSelector() : super(RecipeRepository().get(0));
}

class RecipeView extends ConsumerWidget {
  const RecipeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = (ref.watch(recipeProvider) as Recipe);
    print(recipe.thumbnail);
    return Center(
      child: SizedBox(
        width: 500.0,
        child: ListView(
          children: [
            RecipeThumbnail(imagePath: recipe.thumbnail),
            SizedBox(height: 20.0),
            RecipeViewCount(),
            SizedBox(height: 20.0),
            RecipeTitle(),
            SizedBox(height: 20.0),
            Divider(),
            RecipeSummaryShort(),
            SizedBox(height: 20.0),
            RecipeIngredients(
                recipeIngredientGroups: recipe.recipeIngredientGroups),
            Divider(),
            SizedBox(height: 20.0),
            RecipeContent(recipeSteps: recipe.recipeSteps),
          ],
        ),
      ),
    );
  }
}
