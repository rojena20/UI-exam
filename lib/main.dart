import 'package:flutter/material.dart';
import 'package:ui_exam/home_screen.dart';
import 'package:ui_exam/moody_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        MoodyScreen.routeName: (context) => MoodyScreen(),
      },
      initialRoute: MoodyScreen.routeName,
    ),
  );
}
