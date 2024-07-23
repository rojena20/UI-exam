import 'package:flutter/material.dart';
import 'package:ui_exam/bestSeller_card.dart';

//import 'package:motion_tab_bar/MotionBadgeWidget.dart';
//import 'package:carousel_slider/carousel_slider.dart';
//import 'package:chips_choice/chips_choice.dart';
//import 'package:buttons_tabbar/buttons_tabbar.dart';
//import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 40.0,
                            height: 40.0,
                            margin: EdgeInsets.only(right: 10.0),
                            child: Image.asset(
                              "assets/images/Logo Small.png",
                            ),
                          ),
                          Container(
                            width: 117.0,
                            height: 29.0,
                            child: Image.asset("assets/images/AudiBooks..png"),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset("assets/images/Setting.png"),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 15.0, bottom: 7.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20.0),
                          child: Text(
                            "See more",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 72, 56, 209),
                            ),
                          ),
                        )
                      ],
                    ),
                    TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.transparent,
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 245, 245, 250),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text(
                              "Art",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 46, 46, 93),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 245, 245, 250),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text("Business"),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 245, 245, 250),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text("Comedy"),
                          ),
                        ),
                        Tab(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 245, 245, 250),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text("Drama"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10.0, left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recommended For You",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: Text(
                              "See more",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 72, 56, 209),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 300,
                      margin: EdgeInsets.only(left: 20.0, top: 10.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 15.0),
                            child: Image.asset(
                                "assets/images/Image Placeholder ${index + 1}.png"),
                          );
                        },
                        itemCount: 2,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10.0, left: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Best Seller",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20.0),
                            child: Text(
                              "See more",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 72, 56, 209),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 200,
                      margin: EdgeInsets.only(left: 20.0, top: 10.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return BestsellerCard(index: index);
                        },
                        itemCount: 2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home_filled,
                color: Color.fromARGB(255, 72, 56, 209),
              ),
              Icon(
                Icons.search,
                color: Color.fromARGB(150, 106, 106, 139),
              ),
              Icon(
                Icons.article_outlined,
                color: Color.fromARGB(150, 106, 106, 139),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
