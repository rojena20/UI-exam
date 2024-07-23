import 'package:flutter/material.dart';

class HomeSectionTitle extends StatelessWidget {
  String sectionTitle;

  HomeSectionTitle({super.key, required this.sectionTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, left: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionTitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: "Poppins",
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20.0),
            child: Text(
              "See more",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
                color: Color.fromARGB(255, 72, 56, 209),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
