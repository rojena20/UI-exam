import 'package:flutter/material.dart';

import 'models/exercise_card_model.dart';

class ExerciseCard extends StatelessWidget {
  ExerciseCardModel exerciseCardModel;

  ExerciseCard({super.key, required this.exerciseCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 151,
      color: exerciseCardModel.cardBgColor,
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Image.asset(
            "assets/images/${exerciseCardModel.exerciseImage}",
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            exerciseCardModel.exerciseText,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              fontFamily: "Inter",
            ),
          ),
        ],
      ),
    );
  }
}
