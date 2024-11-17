import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/media.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: size.width * 0.42,
                // height: 405,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 3)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(AppMedia.planeSit))),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss!",
                      style: AppStyles.headlineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        width: size.width * .44,
                        height: 210,
                        decoration: BoxDecoration(
                          color: const Color(0xff3ab8b8),
                          borderRadius: BorderRadius.circular(18),
                        ),
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
                              "Take the survey about our service and get discount",
                              style: AppStyles.headlineStyle3.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
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
                                  width: 18,
                                  color: AppStyles.circleColor)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                    width: size.width*.44,
                    height: 210,
                    decoration: BoxDecoration(
                      color: const Color(0xffec6545),
                      borderRadius: BorderRadius.circular(18)
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Take love",
                          style: AppStyles.headlineStyle2.copyWith(
                            color: Colors.white
                          ),
                        ),
                        const SizedBox(height: 10), // Space between text and emojis
                        const Row(
                          children: [
                            Text(
                              "🥰",
                              style: TextStyle(fontSize: 24), // Adjust size if needed
                            ),
                            SizedBox(width: 8), // Space between emojis
                            Text(
                              "💖",
                              style: TextStyle(fontSize: 24),
                            ),
                            SizedBox(width: 8),
                            Text(
                              "💕",
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  
                ],
              )
            ],
          );
  }
}