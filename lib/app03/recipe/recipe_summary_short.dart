import 'package:flutter/material.dart';

class RecipeSummaryShort extends StatelessWidget {
  const RecipeSummaryShort({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> dataList = ["1인분기준", "60분이내", "난이도 하"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: dataList.map((data) {
        return Container(
          child: Text(data),
          margin: const EdgeInsets.symmetric(horizontal: 2.0),
        );
      }).toList(),
    );
  }
}
