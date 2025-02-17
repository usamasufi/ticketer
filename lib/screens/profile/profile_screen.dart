import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticketer/reuseable/app_media.dart';
import 'package:ticketer/reuseable/app_styles.dart';
import 'package:ticketer/widgets/heading_text.dart';
import 'package:ticketer/widgets/third_text_style.dart';
import 'package:ticketer/widgets/ticket_column_text_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Padding(padding: EdgeInsets.only(top: 40)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // logo
              Container(
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage(AppMedia.logo))),
              ),

              const SizedBox(
                width: 10,
              ),

              // column text
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeadingText(
                    text: "Book Tickets",
                    isColor: false,
                  ),
                  Text(
                    'Faisalabad',
                    style: AppStyles.textStyle
                        .copyWith(color: Colors.grey.shade500, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      color: AppStyles.profilePremiumColor,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppStyles.premiumStatusTextColor),
                          child: const Icon(
                            FluentIcons.shield_12_filled,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Premium Status',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppStyles.premiumStatusTextColor),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Expanded(child: Container()),
              Text(
                'Edit',
                style: TextStyle(
                    color: AppStyles.primaryColor, fontWeight: FontWeight.w300),
              )
            ],
          ),

          const SizedBox(
            height: 8,
          ),
          // divider
          Divider(
            color: Colors.grey.shade300,
          ),

          // card widget
          Stack(
            children: [
              Container(
                height: 90,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(18)),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentIcons.lightbulb_filament_16_filled,
                        color: AppStyles.primaryColor,
                        size: 27,
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ThirdTextStyle(text: "You'v got a new reward"),
                        Text(
                          "You have 95 flights in a year",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9)),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: const Color(0xff264cd2))),
                  ))
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            'Accumulated Miles',
            style: AppStyles.headlineStyle2,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: AppStyles.bgColor),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  '192802',
                  style: TextStyle(
                      fontSize: 45,
                      color: AppStyles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: AppStyles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                    Text(
                      "17th February",
                      style: AppStyles.headlineStyle4.copyWith(fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(height: 4),
                Divider(
                  color: Colors.grey.shade300,
                ),
                const SizedBox(height: 4),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketColumnTextLayout(
                      topText: '23 042',
                      bottomText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    TicketColumnTextLayout(
                      topText: 'Airline CO',
                      bottomText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketColumnTextLayout(
                      topText: '24',
                      bottomText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    TicketColumnTextLayout(
                      topText: 'Macdonald\'s',
                      bottomText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TicketColumnTextLayout(
                      topText: '52 240',
                      bottomText: 'Miles',
                      alignment: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    TicketColumnTextLayout(
                      topText: 'OYO',
                      bottomText: 'Received from',
                      alignment: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                InkWell(
                  onTap: (){},
                  child: Text(
                    'How to get more miles',
                    style: AppStyles.textStyle.copyWith(
                        color: AppStyles.primaryColor,
                        fontWeight: FontWeight.w500),
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
