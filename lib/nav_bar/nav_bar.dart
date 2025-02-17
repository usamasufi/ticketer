import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticketer/controller/bottom_nav_controller.dart';
import 'package:ticketer/reuseable/app_styles.dart';
import 'package:ticketer/screens/home/home_screen.dart';
import 'package:ticketer/screens/profile/profile_screen.dart';
import 'package:ticketer/screens/search/search_screen.dart';
import 'package:ticketer/screens/ticket/ticket_screen.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  // dependency injection
  final BottomNavController controller = Get.put(BottomNavController());

  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Scaffold(
        body: appScreens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: AppStyles.bgColor,
            elevation: 0,
            onTap: controller.onTapped,
            currentIndex: controller.selectedIndex.value,
            showSelectedLabels: false,
            unselectedItemColor: const Color(0xff526400),
            selectedItemColor: Colors.blueGrey,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.home_12_regular),
                  activeIcon: Icon(FluentIcons.home_12_filled),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.search_12_regular),
                  activeIcon: Icon(FluentIcons.search_12_filled),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.ticket_diagonal_16_regular),
                  activeIcon: Icon(FluentIcons.ticket_diagonal_16_filled),
                  label: 'Tickets'),
              BottomNavigationBarItem(
                  icon: Icon(FluentIcons.person_20_regular),
                  activeIcon: Icon(FluentIcons.person_20_filled),
                  label: 'Profile')
            ]),
      );
    });
  }
}
