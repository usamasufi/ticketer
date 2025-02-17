import 'package:flutter/material.dart';
import 'package:ticketer/reuseable/app_styles.dart';

class TextIcon extends StatelessWidget {
  final IconData icon;
  final String text;
  const TextIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
      color: Colors.white),
      child: Row(children: [
        Icon(icon, color: AppStyles.planeColor,),
        const SizedBox(width: 10,),
        Text(text, style: AppStyles.textStyle,)
      ],),
    );
  }
}
