import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/base/screens/home/widgets/hotel_frame.dart';
import 'package:flutter_demo/base/util/app_json.dart';
import 'package:flutter_demo/base/util/app_routes.dart';
import 'package:flutter_demo/base/util/media.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';
import 'package:flutter_demo/base/widgets/app_double_text.dart';
import 'package:flutter_demo/base/widgets/heading_text.dart';
import 'package:flutter_demo/base/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        // ListView insists to have only Widget
        // type items, so it can be also scrollable
        children: [
          // Container is like <div>. You can (should) decorate it
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.headlineStyle3),
                        const SizedBox(
                          height: 5,
                        ),
                        const HeadingText(text: "Book tickets", isColor: false,),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage(AppMedia.logo))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 248, 249, 255)),
                  child: const Row(
                    children: [
                      Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color.fromARGB(255, 32, 87, 114)),
                      Text("Search"),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                AppDoubleText(
                  title: 'Upcoming Flights',
                  details: 'View all',
                  func: () =>
                      Navigator.pushNamed(context, AppRoutes.allTickets),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .map((ticket) => GestureDetector(
                            onTap: () {
                              var index = ticketList.indexOf(ticket);
                              Navigator.pushNamed(
                                context,
                                AppRoutes.ticketScreen,
                                arguments: {"index": index});
                             },
                                  child: TicketView(
                                ticket: ticket,
                              )))
                          .toList(),
                    )),
                const SizedBox(height: 40),
                AppDoubleText(
                  title: 'Hotels',
                  details: 'View all',
                  func: () => Navigator.pushNamed(context, AppRoutes.allHotels),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map((hotel) => GestureDetector(
                          onTap: () {
                            var index = hotelList.indexOf(hotel);
                            Navigator.pushNamed(
                              context, 
                              AppRoutes.hotelDetail, 
                              arguments: {"index": index});
                          },
                          child: HotelFrame(hotel: hotel)))
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
