import 'package:flutter/material.dart';

import '../reuseable/app_styles.dart';

class ThirdTextStyle extends StatelessWidget {
  final String text;
  final bool? isColor;
  const ThirdTextStyle({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isColor == null? AppStyles.headlineStyle3
          .copyWith(color: Colors.white):AppStyles.headlineStyle3,
    );
  }
}
