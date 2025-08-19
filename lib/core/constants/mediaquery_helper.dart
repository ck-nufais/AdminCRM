import 'package:flutter/material.dart';

class SizeConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double blockWidth;  // 1% of screen width
  static late double blockHeight; // 1% of screen height

  static void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
  }
}
