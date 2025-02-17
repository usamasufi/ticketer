import 'package:flutter/material.dart';
import 'package:ticketer/app_routes.dart';
import 'package:ticketer/reuseable/app_styles.dart';
import 'package:ticketer/utils/all_json.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("All Hotels"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 8),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.8),
              itemCount: hotelsList.length,
              itemBuilder: (context, index) {
                var singleHotel = hotelsList[index];
                return HotelsGridView(
                  hotel: singleHotel, index:index
                );
              }),
        ),
      ),
    );
  }
}

class HotelsGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelsGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.hotelDetail, arguments: {
          "index": index
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        height: 350,
        margin: const EdgeInsets.only(right: 8.0),
        decoration: BoxDecoration(
            color: AppStyles.primaryColor,
            borderRadius: BorderRadius.circular(18)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage('assets/images/${hotel['image']}'),
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                hotel['place'],
                style:
                AppStyles.headlineStyle3.copyWith(color: AppStyles.kakiColor),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                hotel['destination'],
                style: AppStyles.headlineStyle3.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                '\$${hotel['price'].toString()}/per night',
                style:
                AppStyles.headlineStyle4.copyWith(color: AppStyles.kakiColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}

