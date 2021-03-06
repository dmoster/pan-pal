import 'package:pan_pal/screens/ingredients/ingredientslist.dart';
import 'package:pan_pal/screens/recipes/recipe.dart';

class IngredientPageArguments {
  final IngredientsList ingredients;

  IngredientPageArguments(this.ingredients);
}

class RecipePageArguments {
  final Recipe recipe;
  final String returnScreen;

  RecipePageArguments(this.recipe, this.returnScreen);
}

class RecipeComposerArguments {
  final IngredientsList ingredients;
  final List<dynamic> recentlyViewed;
  final Recipe recipeToEdit;

  RecipeComposerArguments(
      this.ingredients, this.recentlyViewed, this.recipeToEdit);
}

class RecipeViewerArguments {
  final Recipe recipe;
  final String returnScreen;
  final List<dynamic> recentlyViewed;
  final bool addToRecents;
  final String userId;
  final IngredientsList ingredients;

  RecipeViewerArguments(this.recipe, this.returnScreen, this.recentlyViewed,
      this.addToRecents, this.userId, this.ingredients);
}

class HomeAuthenticatedArguments {
  final IngredientsList ingredients;
  final List<dynamic> recentlyViewed;

  HomeAuthenticatedArguments(this.ingredients, this.recentlyViewed);
}

class RecipeBrowserArguments {
  final List<dynamic> recentlyViewed;
  final IngredientsList ingredients;
  final String searchLetter;

  RecipeBrowserArguments(
      this.recentlyViewed, this.ingredients, this.searchLetter);
}
