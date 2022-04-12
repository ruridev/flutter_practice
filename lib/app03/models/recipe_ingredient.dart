class RecipeIngredient {
  final int _uniqueId;
  final String _name;
  final int _amount;
  final String _unit;

  RecipeIngredient(
    this._uniqueId,
    this._name,
    this._amount,
    this._unit,
  );

  int get uniqueId => _uniqueId;
  String get name => _name;
  int get amount => _amount;
  String get unit => _unit;
}
