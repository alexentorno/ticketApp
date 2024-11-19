import 'package:flutter/material.dart';
import 'package:flutter_demo/base/screens/hotel_data/widgets/expanded_text.dart';
import 'package:flutter_demo/base/util/app_json.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class HotelScreen extends StatefulWidget {
  const HotelScreen({super.key});

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  late int hotelIndex = 0;

  @override
  void didChangeDependencies() {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      var args = ModalRoute.of(context)!.settings.arguments as Map;
      hotelIndex = args["index"];
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: AppStyles.bgColor,
            expandedHeight: 300,
            floating: false,
            pinned: true,
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
            flexibleSpace: FlexibleSpaceBar(
                background: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/images/${hotelList[hotelIndex]["image"]}",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 20,
                    right: 20,
                    child:
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        color: Colors.black.withOpacity(0.4),
                        child: Text(hotelList[hotelIndex]["place"],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: AppStyles.primaryColor,
                              offset: const Offset(2, 2)
                            )
                          ]
                        ),)))
              ],
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(6),
              child: ExpandedText(
                text: hotelList[hotelIndex]["detail"],
              )
            ),
            const Padding(
              padding: EdgeInsets.all(6),
              child: Text(
                "More Images",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: hotelList[hotelIndex]['images'].length,
                  itemBuilder: (context, index) {
                    print(hotelList[hotelIndex]['images']);
                    return Container(
                      margin: EdgeInsets.all(16),
                      color: Colors.red,
                      child: Image.asset("assets/images/${hotelList[hotelIndex]['images'][index]}"),
                    );
                  }),
            )
          ]))
        ],
      ),
    );
  }
}

