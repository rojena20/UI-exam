import 'package:flutter/material.dart';

class MoodySectionTitle extends StatelessWidget {
  String secionTitle;

  MoodySectionTitle({super.key, required this.secionTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              secionTitle,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "Inter",
              ),
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
                    fontFamily: "Inter",
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
    );
  }
}
