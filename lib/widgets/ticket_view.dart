import 'package:flutter/material.dart';
import 'package:ticketer/reuseable/app_styles.dart';
import 'package:ticketer/widgets/app_layout_builder.dart';
import 'package:ticketer/widgets/big_dot.dart';
import 'package:ticketer/widgets/fourth_text_style.dart';
import 'package:ticketer/widgets/side_circle.dart';
import 'package:ticketer/widgets/third_text_style.dart';
import 'package:ticketer/widgets/ticket_column_text_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 180,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            //blue part of ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketBlue
                      : AppStyles.ticketColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              child: Column(
                children: [
                  // show departure and destination with icons first line
                  Row(
                    children: [
                      ThirdTextStyle(
                        text: ticket['from']['code'],
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutBuilder(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: Icon(
                                    Icons.local_airport_rounded,
                                    color: isColor == null
                                        ? Colors.white
                                        : AppStyles.planeSecondColor,
                                  )))
                        ],
                      )),
                      BigDot(
                        isColor: isColor,
                      ),
                      Expanded(child: Container()),
                      ThirdTextStyle(
                          text: ticket['to']['code'], isColor: isColor)
                    ],
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  // show departure and destination names with time
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: FourthTextStyle(
                            text: ticket['from']['name'], isColor: isColor),
                      ),
                      Expanded(child: Container()),
                      FourthTextStyle(
                          text: ticket['flying_time'], isColor: isColor),
                      Expanded(child: Container()),
                      SizedBox(
                          width: 100,
                          child: FourthTextStyle(
                            text: ticket['to']['name'],
                            isColor: isColor,
                            align: TextAlign.end,
                          ))
                    ],
                  )
                ],
              ),
            ),
            // circles and dots
            Container(
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketOrange
                      : AppStyles.ticketColor),
              child: Row(
                children: [
                  SideCircle(
                    isLeft: true,
                    isColor: isColor,
                  ),
                  Expanded(
                      child: AppLayoutBuilder(
                    randomDivider: 16,
                    width: 8,
                    isColor: isColor,
                  )),
                  SideCircle(isLeft: false, isColor: isColor),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: isColor == null
                      ? AppStyles.ticketOrange
                      : AppStyles.ticketColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(isColor == null ? 21 : 0),
                      bottomRight: Radius.circular(isColor == null ? 21 : 0))),
              child: Column(
                children: [
                  // show departure and destination with icons first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TicketColumnTextLayout(
                        topText: ticket['date'],
                        isColor: isColor,
                        bottomText: 'Date',
                        alignment: CrossAxisAlignment.start,
                      ),
                      TicketColumnTextLayout(
                        topText: ticket['departure time'],
                        isColor: isColor,
                        bottomText: 'Departure time',
                        alignment: CrossAxisAlignment.center,
                      ),
                      TicketColumnTextLayout(
                        topText: ticket['number'],
                        isColor: isColor,
                        bottomText: 'Number',
                        alignment: CrossAxisAlignment.end,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
