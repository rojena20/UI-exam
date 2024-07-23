import 'package:flutter/material.dart';

import 'models/feelings_card_model.dart';

class FeelingsCard extends StatelessWidget {
  FeelingsCardModel feelingsCardModel;

  FeelingsCard({super.key, required this.feelingsCardModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/${feelingsCardModel.feelingImage}"),
        SizedBox(
          height: 5.0,
        ),
        Text(
          "${feelingsCardModel.feelingType}",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
