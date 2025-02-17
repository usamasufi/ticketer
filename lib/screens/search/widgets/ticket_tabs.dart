import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String firstTab, secondTab;
  const TicketTabs({super.key, required this.firstTab, required this.secondTab});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xfff4f6fd),
          borderRadius: BorderRadius.circular(50)),
      child: Row(
        children: [
          AppTabs(
            tabText: firstTab,
          ),
          AppTabs(
            tabText: secondTab,
            tabColor: true,
            tabBorder: true,
          )
        ],
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool tabBorder, tabColor;
  const AppTabs({super.key, this.tabText = '', this.tabBorder = false, this.tabColor = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      decoration: BoxDecoration(
          color: tabColor==false? Colors.white:Colors.transparent,
          borderRadius: tabBorder == false
              ? const BorderRadius.horizontal(left: Radius.circular(50))
              : const BorderRadius.horizontal(right: Radius.circular(50))),
      child: Center(child: Text(tabText)),
    );
  }
}
