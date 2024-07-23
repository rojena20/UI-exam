import 'package:flutter/material.dart';

class BestsellerCard extends StatelessWidget {
  int index;

  BestsellerCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      color: Color(0xffF5F5FA),
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/bestSeller ${index + 1}.png",
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Light Mage",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                  ),
                ),
                Text(
                  "Laurie Forest",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: Color.fromARGB(255, 106, 106, 139),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 247, 122, 85),
                      size: 16,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 247, 122, 85),
                      size: 16,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 247, 122, 85),
                      size: 16,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 247, 122, 85),
                      size: 16,
                    ),
                    SizedBox(
                      width: 7.0,
                    ),
                    Icon(
                      Icons.star_border_outlined,
                      color: Color.fromARGB(255, 247, 122, 85),
                      size: 16,
                    ),
                  ],
                ),
                Text(
                  "1,000+ Listeners",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    color: Color.fromARGB(255, 106, 106, 139),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
