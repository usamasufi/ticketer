import 'package:flutter/material.dart';
import '../reuseable/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  final String headingText, leadingText;
  final VoidCallback func;
  const AppDoubleText(
      {super.key, required this.headingText, required this.leadingText, required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(headingText, style: AppStyles.headlineStyle2),
        InkWell(
          onTap: func,
          child: Text(
            leadingText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
