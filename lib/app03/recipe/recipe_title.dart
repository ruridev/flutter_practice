import 'package:flutter/material.dart';

class RecipeTitle extends StatelessWidget {
  const RecipeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
            "https://scontent-nrt1-1.xx.fbcdn.net/v/t1.6435-9/148938780_2962339364046306_2455609423488576139_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=973b4a&_nc_ohc=-LTUh7AldKsAX-uDAdp&_nc_ht=scontent-nrt1-1.xx&oh=00_AT96TYtxedMRUw5Xfy4XyXMKSx_EMGrsb_KaeswkKs_BSw&oe=6278C5C0",
            width: 50),
        SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("@요리하는 라라", style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                "닭 봉 간장조림! 십년째 만들어먹는 양념 공유해요!",
                style: TextStyle(fontSize: 26.0),
              ),
              Text("초간단 레시피"),
            ],
          ),
        ),
      ],
    );
  }
}
