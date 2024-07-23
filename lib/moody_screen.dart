import 'package:flutter/material.dart';
import 'package:ui_exam/feature_card.dart';
import 'package:ui_exam/feelings_card.dart';
import 'package:ui_exam/models/feature_card_model.dart';
import 'package:ui_exam/models/feelings_card_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//import 'package:badges/badges.dart' as badges;

class MoodyScreen extends StatelessWidget {
  static const String routeName = "MoodyScreen";

  MoodyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(
            left: 20.0,
            right: 20.0,
            top: 20.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/logo.png"),
                    Image.asset("assets/images/bell_icon.png"),
                  ],
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Hello, ',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text: 'Sara Rose',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 15.0),
                      child: Text(
                        "How are you feeling today ?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FeelingsCard(
                          feelingsCardModel: FeelingsCardModel(
                              feelingImage: "love.png", feelingType: "Love"),
                        ),
                        FeelingsCard(
                          feelingsCardModel: FeelingsCardModel(
                              feelingImage: "cool.png", feelingType: "Cool"),
                        ),
                        FeelingsCard(
                          feelingsCardModel: FeelingsCardModel(
                              feelingImage: "happy.png", feelingType: "Happy"),
                        ),
                        FeelingsCard(
                          feelingsCardModel: FeelingsCardModel(
                              feelingImage: "sad.png", feelingType: "Sad"),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "Feature",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "See more",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff027A48),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xff027A48),
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: PageView.builder(
                        controller: PageController(),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return FeatureCard(
                            featureCardModel: FeatureCardModel(
                                featureImage: "Walking the Dog.png",
                                featuteTitle: "Positive vibes",
                                featureDesc: "Boost your mood with positive vibes",
                                featureTime: "10 mins"),
                          );
                        },
                      ),
                    ),
                    Center(
                      child: SmoothPageIndicator(
                        controller: PageController(),
                        count: 3,
                        effect: ColorTransitionEffect(
                          activeDotColor: Color(0xff98A2B3),
                          dotColor: Color(0xffD9D9D9),
                          dotHeight: 7.0,
                          dotWidth: 7.0,
                          spacing: 8.0,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25.0, bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "Exercise",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "See more",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff027A48),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Color(0xff027A48),
                                  size: 14,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home_filled, color: Color(0xff667085),),
            Icon(Icons.grid_view_outlined, color: Color(0xff667085),),
            Icon(Icons.calendar_today_outlined, color: Color(0xff667085),),
            Icon(Icons.person, color: Color(0xff667085),),
          ],
        ),
      ),
    );
  }
}
