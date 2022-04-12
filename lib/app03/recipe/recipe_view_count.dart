import 'package:flutter/material.dart';

class RecipeViewCount extends StatelessWidget {
  const RecipeViewCount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: const [
            Icon(Icons.remove_red_eye),
            Text('10,000+'),
            SizedBox(width: 100.0),
            Icon(Icons.favorite),
            Text('10,000+'),
          ],
        )
      ],
    );
  }
}
