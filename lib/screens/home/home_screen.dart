import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketer/app_routes.dart';
import 'package:ticketer/reuseable/app_media.dart';
import 'package:ticketer/reuseable/app_styles.dart';
import 'package:ticketer/widgets/app_double_text.dart';
import 'package:ticketer/widgets/heading_text.dart';
import 'package:ticketer/widgets/ticket_view.dart';

import '../../utils/all_json.dart';
import 'widgets/hotels.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: AppStyles.headlineStyle3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const HeadingText(
                          text: "Book Tickets",
                          isColor: false,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                      fillColor: const Color(0xfff4f6fd),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(
                        FluentIcons.search_12_regular,
                        color: Color(0xffc0c750),
                      ),
                      hintText: 'Search',
                      hintStyle: const TextStyle(color: Color(0xffbec0c6))),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                AppDoubleText(
                  headingText: 'Upcoming Flights',
                  leadingText: 'View all',
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(3)
                        .map((singleTicket) => GestureDetector(
                              onTap: () {
                                var index = ticketList.indexOf(singleTicket);
                                Navigator.pushNamed(
                                    context, AppRoutes.ticketScreen,
                                    arguments: {"index": index});
                              },
                              child: TicketView(
                                ticket: singleTicket,
                              ),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .04,
                ),
                AppDoubleText(
                  headingText: 'Hotels',
                  leadingText: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .02,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelsList
                        .take(2)
                        .map((singleHotel) => GestureDetector(
                              onTap: () {
                                var index = hotelsList.indexOf(singleHotel);
                                Navigator.pushNamed(
                                    context, AppRoutes.hotelDetail,
                                    arguments: {"index": index});
                              },
                              child: Hotels(
                                hotel: singleHotel,
                              ),
                            ))
                        .toList(),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
