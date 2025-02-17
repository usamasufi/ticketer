/*
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketer/reuseable/app_styles.dart';
import 'package:ticketer/screens/home/home_screen.dart';
import 'package:ticketer/screens/profile/profile_screen.dart';
import 'package:ticketer/screens/search/search_screen.dart';
import 'package:ticketer/screens/ticket/ticket_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appScreens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppStyles.bgColor,
          elevation: 0,
          onTap: _onTapped,
          currentIndex: _selectedIndex,
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
  }
}
*/
