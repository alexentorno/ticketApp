import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color bgColor = const Color.fromARGB(255, 240, 240, 240);
  static Color primaryColor = primary;
  static Color textColor = const Color.fromARGB(255, 71, 71, 71);
  static Color ticketBlue = const Color.fromRGBO(82, 103, 153, 1);
  static Color ticketOrange = const Color.fromRGBO(243, 123, 103, 1);

  static TextStyle linkStyle = TextStyle(
    fontSize: 16, fontWeight: FontWeight.w500, color: AppStyles.textColor);

  static TextStyle headlineStyle1 = TextStyle(
    fontSize: 26, fontWeight: FontWeight.bold, color: AppStyles.textColor);

  static TextStyle headlineStyle2 = TextStyle(
    fontSize: 21, fontWeight: FontWeight.bold, color: AppStyles.textColor);    

  static TextStyle headlineStyle3 = const TextStyle(
    fontSize: 17, fontWeight: FontWeight.w500);

  static TextStyle headlineStyle4 = const TextStyle(
    fontSize: 14, fontWeight: FontWeight.w500);


}