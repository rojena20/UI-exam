import 'package:flutter/material.dart';

import 'models/feature_card_model.dart';

class FeatureCard extends StatelessWidget {
  FeatureCardModel featureCardModel;

  FeatureCard({super.key, required this.featureCardModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Color(0xffECFDF3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  featureCardModel.featuteTitle,
                  style: TextStyle(
                    color: Color(0xff344054),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Inter",
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  featureCardModel.featureDesc,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Inter",
                  ),
                ),
                SizedBox(
                  height: 3.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.play_circle_fill,
                      color: Color(0xff32D583),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      featureCardModel.featureTime,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Inter",
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child:
                Image.asset("assets/images/${featureCardModel.featureImage}"),
          ),
        ],
      ),
    );
  }
}
