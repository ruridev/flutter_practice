import '../models/recipe.dart';
import '../models/recipe_ingredient.dart';
import '../models/recipe_ingredient_group.dart';
import '../models/recipe_step.dart';

class RecipeRepository {
  List<Recipe> list() {
    return [
      _buildRecipe(),
      _buildRecipe(),
      _buildRecipe(),
      _buildRecipe(),
      _buildRecipe(),
      _buildRecipe(),
      _buildRecipe(),
      _buildRecipe(),
      _buildRecipe(),
      _buildRecipe()
    ];
  }

  Recipe get(int _) {
    return _buildRecipe();
  }

  Recipe _buildRecipe() {
    RecipeIngredient recipeIngredient = RecipeIngredient(1, "양파", 1, "줌");
    RecipeIngredientGroup recipeIngredientGroup = RecipeIngredientGroup(
      "재료",
      [recipeIngredient, recipeIngredient, recipeIngredient],
    );
    RecipeStep recipeStep1 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/ab1e0aabcb58de52cdba5a5cb4910f661.jpg");
    RecipeStep recipeStep2 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/ac99d98a2e2a7ef5c66ae2a73665f34d1.jpg");
    RecipeStep recipeStep3 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/b645dd92c59678c0aa8526edd84a95b21.jpg");
    RecipeStep recipeStep4 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/5b1843ddd717db73f6f22970914407231.jpg");
    RecipeStep recipeStep5 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/cd1d1451ab60da99b8308d892dbf09d11.jpg");
    RecipeStep recipeStep6 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/ebb66546b2f979803b0f78079c803b771.jpg");
    RecipeStep recipeStep7 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/9a15ff01fad5f0ba73d7b28f0cdd9c931.jpg");
    RecipeStep recipeStep8 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/6ddab24df02d07da741e3ce0e8cd8ddb1.jpg");
    RecipeStep recipeStep9 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/fdbb88682cc022c7b4a8347038d7b8b81.jpg");
    RecipeStep recipeStep10 = RecipeStep("title",
        "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/d97512af68806494289b10a3bddfa02f1.jpg");
    Recipe recipe = Recipe(
      "title",
      "https://recipe1.ezmember.co.kr/cache/recipe/2020/08/28/c37e0db0e0386d453eda2be45e26b9c01.jpg",
      "하",
      "1시간",
      [recipeIngredientGroup, recipeIngredientGroup, recipeIngredientGroup],
      [
        recipeStep1,
        recipeStep2,
        recipeStep3,
        recipeStep4,
        recipeStep5,
        recipeStep6,
        recipeStep7,
        recipeStep8,
        recipeStep9,
        recipeStep10
      ],
    );

    return recipe;
  }
}
