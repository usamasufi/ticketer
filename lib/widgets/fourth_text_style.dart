import 'package:flutter/material.dart';

import '../reuseable/app_styles.dart';

class FourthTextStyle extends StatelessWidget {
  final String text;
  final TextAlign align;
  final bool? isColor;
  const FourthTextStyle(
      {super.key,
      required this.text,
      this.align = TextAlign.start,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: isColor == null
          ? AppStyles.headlineStyle4.copyWith(color: Colors.white)
          : AppStyles.headlineStyle4,
    );
  }
}
