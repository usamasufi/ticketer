import 'package:flutter/material.dart';

import 'fourth_text_style.dart';
import 'third_text_style.dart';

class TicketColumnTextLayout extends StatelessWidget {
  final String topText, bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;
  const TicketColumnTextLayout(
      {super.key,
      required this.topText,
      required this.bottomText,
      required this.alignment,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        ThirdTextStyle(text: topText, isColor: isColor),
        const SizedBox(
          height: 5,
        ),
        FourthTextStyle(text: bottomText, isColor: isColor)
      ],
    );
  }
}
