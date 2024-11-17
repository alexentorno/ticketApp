import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/media.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class HotelFrame extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelFrame({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      height: 350,
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(12),
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  "assets/images/${hotel["image"]}"
                )
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["place"],
              style: AppStyles.headlineStyle1.copyWith(color: AppStyles.bgColor),
            ),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              hotel["destination"],
              style: AppStyles.headlineStyle1.copyWith(color: AppStyles.bgColor),
            ),
          ),
          const SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "\$${hotel["price"]}/night",
              style: AppStyles.headlineStyle1.copyWith(color: Colors.green.shade300),
            ),
          )
        ],
      ),
    );
  }
}