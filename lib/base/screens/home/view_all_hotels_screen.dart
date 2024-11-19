import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/app_json.dart';
import 'package:flutter_demo/base/util/app_routes.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class ViewAllHotelsScreen extends StatelessWidget {
  const ViewAllHotelsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("All Hotels"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 3),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9
              ),
              itemCount: hotelList.length,
              itemBuilder: (context, index) {
                var hotel = hotelList[index];
                return HotelGridFrame(hotel: hotel);
              },
          ),
        ),
      )
    );
  }
}

class HotelGridFrame extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelGridFrame({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        var index = hotelList.indexOf(hotel);
        Navigator.pushNamed(
          context, 
          AppRoutes.hotelDetail,
          arguments: {"index": index});
      },

      child: Container(

        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.3,
              child: Container(
                
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/${hotel["image"]}"
                    )
                  )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                hotel["place"],
                style: AppStyles.headlineStyle2.copyWith(color: AppStyles.bgColor),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    hotel["destination"],
                    style: AppStyles.headlineStyle3.copyWith(color: AppStyles.bgColor),
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "\$${hotel["price"]}/night",
                    style: AppStyles.headlineStyle3.copyWith(color: Colors.green.shade300),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}