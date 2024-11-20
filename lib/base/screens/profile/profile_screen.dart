import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/media.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';
import 'package:flutter_demo/base/widgets/column_text_placeholder.dart';
import 'package:flutter_demo/base/widgets/heading_text.dart';
import 'package:flutter_demo/base/widgets/text_placeholder_size3.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: ListView(
          children: [
            const Padding(padding: EdgeInsets.only(top: 15)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // showing user avatar
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 85,
                  height: 85,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image:
                        const DecorationImage(image: AssetImage(AppMedia.logo)),
                  ),
                ),
                // showing column text next to avatar
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeadingText(
                      text: "Book tickets",
                      isColor: false,
                    ),
                    Text(
                      "New-York",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 3, vertical: 3),
                      decoration: BoxDecoration(
                        color: AppStyles.profileStatusColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppStyles.profileStatusColor2),
                            child: const Icon(
                              FluentSystemIcons.ic_fluent_shield_filled,
                              color: Colors.white,
                              size: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Premium status",
                            style: TextStyle(
                                color: AppStyles.profileStatusColor2,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text("Edit",
                      style: TextStyle(
                          color: AppStyles.primaryColor,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Divider(
              color: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 8,
            ),
            // award box
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
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Row(
                    children: [
                      // lightbulb circle
                      CircleAvatar(
                        maxRadius: 25,
                        backgroundColor: Colors.white,
                        child: Icon(
                            FluentSystemIcons
                                .ic_fluent_lightbulb_filament_filled,
                            color: AppStyles.primaryColor,
                            size: 27),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextPlaceholderSize3(
                            text: "You've got a new award!",
                          ),
                          Text(
                            "You have 95 flights this year",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white.withOpacity(0.75)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                    right: -45,
                    top: -45,
                    child: Container(
                      padding: const EdgeInsets.all(35),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 18,
                              color: const Color.fromRGBO(38, 76, 210, 1))),
                    )),
                Positioned(
                    right: 65,
                    top: 10,
                    child: Container(
                      // padding: EdgeInsets.all(35),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 10,
                              color: const Color.fromRGBO(38, 76, 210, 1))),
                    ))
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Text("Accimilated kilometers", style: AppStyles.headlineStyle2),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: AppStyles.bgColor),
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "195475",
                    style: TextStyle(
                        fontSize: 45,
                        color: AppStyles.textColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  // detailed miles info

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Distance accured",
                        style: AppStyles.headlineStyle4.copyWith(
                            fontSize: 16, color: Colors.grey.shade600),
                      ),
                      Text(
                        "20 November 2024",
                        style: AppStyles.headlineStyle4.copyWith(
                            fontSize: 16, color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 4,
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnTextPlaceholder(
                        topText: "145 780",
                        bottomText: "Km",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnTextPlaceholder(
                        topText: "Ride to uni",
                        bottomText: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 8,
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnTextPlaceholder(
                        topText: "15 780",
                        bottomText: "Km",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnTextPlaceholder(
                        topText: "Air Baltic",
                        bottomText: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 8,
                  ),
                  Divider(
                    color: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnTextPlaceholder(
                        topText: "45 780",
                        bottomText: "Km",
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnTextPlaceholder(
                        topText: "B-2",
                        bottomText: "Received from",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  SizedBox(height: 25,),
                  InkWell(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Text(
                      "How to get more kilometers?",
                      style: AppStyles.linkStyle.copyWith(
                        color: AppStyles.primaryColor,
                        fontWeight: FontWeight.w500
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
