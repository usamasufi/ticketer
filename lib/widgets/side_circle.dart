import 'package:flutter/material.dart';

class SideCircle extends StatelessWidget {
  final bool isLeft;
  final bool? isColor;
  const SideCircle({super.key, required this.isLeft, this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
          decoration: BoxDecoration(
        color: isColor==null?Colors.white:Colors.grey.shade200,
        borderRadius: isLeft == true
            ? const BorderRadius.only(
                topRight: Radius.circular(10), bottomRight: Radius.circular(10))
            : const BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
      )),
    );
  }
}
