import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor = const Color(0xffece9ee);
  static Color ticketBlue = const Color(0xff526799);
  static Color ticketOrange = const Color(0xfff37b67);
  static Color ticketColor = Colors.white;
  static Color kakiColor = const Color(0xffd2bdb6);
  static Color planeColor = const Color(0xffbfc2df);
  static Color findTicketColor = const Color(0xd91130ce);
  static Color circleColor = const Color(0xff189999);
  static Color bigDotColor = const Color(0xff8accf7);
  static Color planeSecondColor = const Color(0xffbaccf7);
  static Color profilePremiumColor = const Color(0xfffef4f3);
  static Color premiumStatusTextColor = const Color(0xff526799);

  static TextStyle textStyle =
      TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: textColor);

  static TextStyle headlineStyle1 =
      TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headlineStyle2 =
      TextStyle(fontSize: 21, fontWeight: FontWeight.bold, color: textColor);

  static TextStyle headlineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headlineStyle4 = TextStyle(
      fontSize: 14, fontWeight: FontWeight.w500, color: Colors.grey.shade500);
}
