import 'package:flutter/material.dart';

class BestsellerCard extends StatelessWidget {
  int index;
   BestsellerCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15.0),
      child: Row(
        children: [
          Image.asset(
            "assets/images/bestSeller ${index + 1}.png",),
          Column(
            children: [
              Text(
                "Light Mage",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Laurie Forest",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(
                      255, 106, 106, 139),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(
                        255, 247, 122, 85),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(
                        255, 247, 122, 85),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(
                        255, 247, 122, 85),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(
                        255, 247, 122, 85),
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Color.fromARGB(
                        255, 247, 122, 85),
                  ),
                ],
              ),
              Text(
                "1,000+ Listeners",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(
                      255, 106, 106, 139),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
