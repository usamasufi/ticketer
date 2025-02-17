/*
import 'package:flutter/material.dart';
import 'package:ticketer/reuseable/app_styles.dart';
import 'package:ticketer/utils/all_json.dart';

class HotelDetail extends StatefulWidget {
  const HotelDetail({super.key});

  @override
  State<HotelDetail> createState() => _HotelDetailState();
}

class _HotelDetailState extends State<HotelDetail> {
  late int index = 0;

  @override
  void didChangeDependencies() {
    var args = ModalRoute.of(context)!.settings.arguments as Map;
    index = args["index"];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppStyles.primaryColor),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            pinned: true,
            floating: false,
            backgroundColor: AppStyles.bgColor,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text(
              //   hotelsList[index]["place"],
              //   style: AppStyles.headlineStyle1.copyWith(color: Colors.white),
              // ),
                background: Stack(
                  children: [
                    Positioned.fill(
                        child: Image.asset(
                          "assets/images/${hotelsList[index]["image"]}",
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: Container(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        color: Colors.black.withOpacity(0.5),
                        child: Text(hotelsList[index]["place"],
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      blurRadius: 10.0,
                                      color: AppStyles.primaryColor,
                                      offset: const Offset(2.0, 2.0))
                                ])),
                      ),
                    )
                  ],
                )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ExpandedTextWidget(
                    text:
                    hotelsList[index]['detail'],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Related Images',
                    style: AppStyles.headlineStyle2,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: hotelsList[index]['images'].length,
                      itemBuilder: (context, imagesIndex) {
                        return Container(
                            margin: const EdgeInsets.all(8),
                            color: Colors.red,
                            child: Image.asset(
                                'assets/images/${hotelsList[index]['images'][imagesIndex]}'));
                      }),
                )
              ]))
        ],
      ),
    );
  }
}

class ExpandedTextWidget extends StatefulWidget {
  final String text;
  const ExpandedTextWidget({super.key, required this.text});

  @override
  State<ExpandedTextWidget> createState() => _ExpandedTextWidgetState();
}

class _ExpandedTextWidgetState extends State<ExpandedTextWidget> {
  bool isExpanded = false;
  _toggleExpansion() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {


    var textWidget = Text(
      widget.text,
      maxLines: isExpanded?null:9,
      overflow: isExpanded?TextOverflow.visible:TextOverflow.ellipsis,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            _toggleExpansion();
          },
          child: Text(isExpanded?'Less':'More', style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor)),),

      ],
    );
  }
}
*/
// asda