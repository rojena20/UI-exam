import 'package:flutter/material.dart';
import 'package:ui_exam/bestSeller_card.dart';
import 'package:ui_exam/home_section_title.dart';

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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30.0),
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
                      margin: EdgeInsets.only(right: 20.0),
                      child: Image.asset("assets/images/Setting.png"),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 15.0, bottom: 7.0),
                child: Column(
                  children: [
                    HomeSectionTitle(sectionTitle: "Categories"),
                    TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.transparent,
                      indicator: BoxDecoration(
                        color: Colors.transparent,
                      ),
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
                                fontFamily: "Poppins",
                                fontSize: 16,
                              ),
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
                            child: Text(
                              "Business",
                              style: TextStyle(
                                color: Color.fromARGB(255, 46, 46, 93),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 16,
                              ),
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
                            child: Text(
                              "Comedy",
                              style: TextStyle(
                                color: Color.fromARGB(255, 46, 46, 93),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 16,
                              ),
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
                            child: Text(
                              "Drama",
                              style: TextStyle(
                                color: Color.fromARGB(255, 46, 46, 93),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins",
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      HomeSectionTitle(sectionTitle: "Recommended For You"),
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
                      HomeSectionTitle(sectionTitle: "Best Seller"),
                      Container(
                        height: 144,
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
              ),
            ],
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
                    Icons.search,
                  ),
                  label: "Grid"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.article_outlined,
                  ),
                  label: "Calendar"),
            ],
            selectedItemColor: Color(0xff4838D1),
            unselectedItemColor: Color(0xff6A6A8B),
            showSelectedLabels: false,
            showUnselectedLabels: false,
          ),
        ),
      ),
    );
  }
}
