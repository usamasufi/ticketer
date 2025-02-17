import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticketer/reuseable/app_media.dart';
import 'package:ticketer/reuseable/app_styles.dart';
import 'package:ticketer/screens/search/widgets/ticket_tabs.dart';
import 'package:ticketer/screens/ticket/widgets/ticket_position_circle.dart';
import 'package:ticketer/utils/all_json.dart';
import 'package:ticketer/widgets/app_layout_builder.dart';
import 'package:ticketer/widgets/ticket_view.dart';

import '../../widgets/ticket_column_text_layout.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {

  late int ticketIndex=0;

  @override
  void didChangeDependencies() {
    if(ModalRoute.of(context)!.settings.arguments != null){
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      ticketIndex = args["index"];
    }else{
      Container(
          padding: const EdgeInsets.only(left: 16),
          child: TicketView(
            ticket: ticketList[ticketIndex],
            isColor: true,
          ));
    }

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tickets"),backgroundColor: AppStyles.bgColor,),
        backgroundColor: AppStyles.bgColor,
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              children: [
                // const SizedBox(height: 40,),
                // Text(
                //   "Tickets",
                //   style: AppStyles.headlineStyle1,
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                const TicketTabs(
                  firstTab: 'Upcoming',
                  secondTab: 'Previous',
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 16),
                    child: TicketView(
                      ticket: ticketList[ticketIndex],
                      isColor: true,
                    )),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  color: AppStyles.ticketColor,
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TicketColumnTextLayout(
                            topText: 'Flutter DB',
                            isColor: true,
                            bottomText: 'Passenger',
                            alignment: CrossAxisAlignment.start,
                          ),
                          TicketColumnTextLayout(
                            topText: '5221 364869',
                            isColor: true,
                            bottomText: 'Passport',
                            alignment: CrossAxisAlignment.end,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const AppLayoutBuilder(
                        randomDivider: 15,
                        width: 5,
                        isColor: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TicketColumnTextLayout(
                            topText: '5215 9984665',
                            isColor: true,
                            bottomText: 'Number of E-ticket',
                            alignment: CrossAxisAlignment.start,
                          ),
                          TicketColumnTextLayout(
                            topText: 'D5244962',
                            isColor: true,
                            bottomText: 'Booking code',
                            alignment: CrossAxisAlignment.end,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const AppLayoutBuilder(
                        randomDivider: 15,
                        width: 5,
                        isColor: false,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    AppMedia.visaLogo,
                                    scale: 12,
                                  ),
                                  Text(
                                    " *** 2658",
                                    style: AppStyles.headlineStyle3,
                                  )
                                ],
                              ),
                              Text(
                                'Payment method',
                                style: AppStyles.headlineStyle4,
                              )
                            ],
                          ),
                          const TicketColumnTextLayout(
                            topText: '\$249.65',
                            isColor: true,
                            bottomText: 'Price',
                            alignment: CrossAxisAlignment.end,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 1,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 1,),
                // bottom of the ticket details section
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: AppStyles.ticketColor,
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21))),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child:
                    ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Center(child: BarcodeWidget(
                          height: 90,
                          data: 'https://www.facebook.com',
                          drawText: false,
                          color: AppStyles.textColor,
                          width: double.infinity,
                          barcode: Barcode.code128())),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                    padding: const EdgeInsets.only(left: 16),
                    child: TicketView(
                      ticket: ticketList[ticketIndex],
                    )),
              ],
            ),
            const TicketPositionCircle(pos: true,),
            const TicketPositionCircle(pos: null,)
          ],
        ));
  }
}
