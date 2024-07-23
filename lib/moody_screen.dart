import 'package:flutter/material.dart';
import 'package:ui_exam/exercise_card.dart';
import 'package:ui_exam/feature_card.dart';
import 'package:ui_exam/feelings_card.dart';
import 'package:ui_exam/models/exercise_card_model.dart';
import 'package:ui_exam/models/feature_card_model.dart';
import 'package:ui_exam/models/feelings_card_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui_exam/moody_section_title.dart';
//import 'package:badges/badges.dart' as badges;

class MoodyScreen extends StatelessWidget {
  static const String routeName = "MoodyScreen";
  final PageController _pageController = PageController();

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
              Expanded(
                child: SingleChildScrollView(
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
                          GestureDetector(
                            child: FeelingsCard(
                              feelingsCardModel: FeelingsCardModel(
                                  feelingImage: "love.png",
                                  feelingType: "Love"),
                            ),
                          ),
                          GestureDetector(
                            child: FeelingsCard(
                              feelingsCardModel: FeelingsCardModel(
                                  feelingImage: "cool.png",
                                  feelingType: "Cool"),
                            ),
                          ),
                          GestureDetector(
                            child: FeelingsCard(
                              feelingsCardModel: FeelingsCardModel(
                                  feelingImage: "happy.png",
                                  feelingType: "Happy"),
                            ),
                          ),
                          GestureDetector(
                            child: FeelingsCard(
                              feelingsCardModel: FeelingsCardModel(
                                  feelingImage: "sad.png", feelingType: "Sad"),
                            ),
                          ),
                        ],
                      ),
                      MoodySectionTitle(secionTitle: "Feature"),
                      Container(
                        height: 150,
                        margin: EdgeInsets.only(bottom: 10.0),
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return FeatureCard(
                              featureCardModel: FeatureCardModel(
                                  featureImage: "Walking the Dog.png",
                                  featuteTitle: "Positive vibes",
                                  featureDesc:
                                      "Boost your mood with positive vibes",
                                  featureTime: "10 mins"),
                            );
                          },
                        ),
                      ),
                      Center(
                        child: SmoothPageIndicator(
                          controller: _pageController,
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
                      MoodySectionTitle(secionTitle: "Exercise"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ExerciseCard(
                            exerciseCardModel: ExerciseCardModel(
                                exerciseImage: "relaxation.png",
                                exerciseText: "Relaxation",
                                cardBgColor: Color(0xffF9F5FF)),
                          ),
                          ExerciseCard(
                            exerciseCardModel: ExerciseCardModel(
                                exerciseImage: "meditation.png",
                                exerciseText: "Meditation",
                                cardBgColor: Color(0xffFDF2FA)),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ExerciseCard(
                            exerciseCardModel: ExerciseCardModel(
                                exerciseImage: "breathing.png",
                                exerciseText: "Breathing",
                                cardBgColor: Color(0xffFFFAF5),),
                          ),
                          ExerciseCard(
                            exerciseCardModel: ExerciseCardModel(
                                exerciseImage: "yoga.png",
                                exerciseText: "Yoga",
                                cardBgColor: Color(0xffF0F9FF)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grid_view_outlined,
                ),
                label: "Grid"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_today_outlined,
                ),
                label: "Calendar"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Person"),
          ],
          selectedItemColor: Color(0xff027A48),
          unselectedItemColor: Color(0xff667085),
          showSelectedLabels: false,
          showUnselectedLabels: false,
        ),
      ),
    );
  }
}
