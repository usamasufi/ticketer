import 'package:flutter/material.dart';
import 'package:ticketer/reuseable/app_media.dart';

import '../../../reuseable/app_styles.dart';

class SearchUpcomingFlights extends StatelessWidget {
  const SearchUpcomingFlights({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            width: size.width * .42,
            height: 435,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade200, blurRadius: 1, spreadRadius: 2)
              ],
            ),
            child: Column(
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                          image: AssetImage(AppMedia.hotelRoom),
                          fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: size.height * .015,
                ),
                Text(
                  "20% discount on the early booking of this flight. Don't miss",
                  style: AppStyles.headlineStyle2,
                )
              ],
            )),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  width: size.width * .44,
                  height: 210,
                  decoration: BoxDecoration(
                      color: const Color(0xff3ab8b8),
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discount\nfor survey",
                        style: AppStyles.headlineStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                          "Take the survey about our services and get discount",
                          style: AppStyles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18))
                    ],
                  ),
                ),
                Positioned(
                  top: -40,
                  right: -45,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 18, color: AppStyles.circleColor)),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * .440,
              height: 210,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: const Color(0xffec6545)),
              child: Column(
                children: [
                  Text('Take Love',
                      style: AppStyles.headlineStyle2
                          .copyWith(color: Colors.white)),
                  const SizedBox(height: 50,),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '😍',
                          style: TextStyle(fontSize: 30),
                        ),
                        TextSpan(
                          text: '❤️',
                          style: TextStyle(fontSize: 40),
                        ),
                        TextSpan(
                          text: '😍',
                          style: TextStyle(fontSize: 30),
                        ),
                      ]
                    )

                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
