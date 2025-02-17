import 'package:flutter/material.dart';
import 'package:ticketer/reuseable/app_styles.dart';
import 'package:ticketer/screens/search/widgets/find_tickets.dart';
import 'package:ticketer/screens/search/widgets/search_upcoming_flights.dart';
import 'package:ticketer/screens/search/widgets/text_icon.dart';
import 'package:ticketer/screens/search/widgets/ticket_tabs.dart';
import 'package:ticketer/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0, bottom: 20),
        child: ListView(
          children: [
            Text(
              'What are\nyou looking for?',
              style: AppStyles.headlineStyle1.copyWith(fontSize: 35),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.033,),
            const TicketTabs(firstTab: 'Airline Tickets',secondTab: 'Hotels',),
            SizedBox(height: MediaQuery.of(context).size.height*.030,),
            const TextIcon(icon: Icons.flight_takeoff_rounded,text: 'Departure',),
            SizedBox(height: MediaQuery.of(context).size.height*.025,),
            const TextIcon(icon: Icons.flight_land_rounded,text: 'Arrival',),
            SizedBox(height: MediaQuery.of(context).size.height*.035,),
            const FindTickets(),
            SizedBox(height: MediaQuery.of(context).size.height*.045,),
            AppDoubleText(
              headingText: 'Upcoming Flights',
              leadingText: 'View all',
              func: () => Navigator.pushNamed(context, 'all_tickets'),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.025,),
            const SearchUpcomingFlights()
          ],
        ),
      ),
    );
  }
}
