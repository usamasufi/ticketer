import 'package:flutter/material.dart';
import 'package:ticketer/app_routes.dart';

import '../../utils/all_json.dart';
import '../../widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Tickets'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map((singleTicket) => GestureDetector(
                onTap: (){
                  var index = ticketList.indexOf(singleTicket);
                  Navigator.pushNamed(context, AppRoutes.ticketScreen, arguments: {
                    "index": index});
                },
                    child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: TicketView(
                            wholeScreen: true,
                            ticket: singleTicket,
                          ),
                        ),
                  ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
