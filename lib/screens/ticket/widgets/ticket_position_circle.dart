import 'package:flutter/material.dart';
import 'package:ticketer/reuseable/app_styles.dart';

class TicketPositionCircle extends StatelessWidget {
  final bool? pos;
  const TicketPositionCircle({super.key, this.pos});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: pos==true?25:null,
        right: pos==true?null:25,
        top: 343,
        child: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: AppStyles.textColor)
          ),
          child: CircleAvatar(
            maxRadius: 4,
            backgroundColor: AppStyles.textColor,
          ),
        ));
  }
}
