class RecipeStep {
  final String _title;
  final String _imagePath;

  RecipeStep(
    this._title,
    this._imagePath,
  );

  String get title => _title;
  String get imagePath => _imagePath;
}
