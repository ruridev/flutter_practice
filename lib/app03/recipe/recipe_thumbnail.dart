import 'package:flutter/material.dart';

class RecipeThumbnail extends StatelessWidget {
  late String imagePath;

  RecipeThumbnail({Key? key, required String imagePath}) {
    this.imagePath = imagePath;
  }

  @override
  Widget build(BuildContext context) {
    return Image.network(imagePath);
  }
}
