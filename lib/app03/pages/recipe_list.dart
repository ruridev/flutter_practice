import 'package:flutter/material.dart';

class RecipeList extends StatelessWidget {
  const RecipeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _buildItem(),
        _buildItem(),
        _buildItem(),
        _buildItem(),
        _buildItem()
      ],
    );
  }

  Widget _buildItem() {
    return SizedBox(
      height: 100.0,
      child: Text("text"),
    );
  }
}
