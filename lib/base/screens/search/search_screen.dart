import 'package:flutter/material.dart';
import 'package:flutter_demo/base/screens/search/widgets/find_tickets.dart';
import 'package:flutter_demo/base/screens/search/widgets/text_icon.dart';
import 'package:flutter_demo/base/screens/search/widgets/ticket_promotion.dart';
import 'package:flutter_demo/base/screens/search/widgets/ticket_tabs.dart';
import 'package:flutter_demo/base/util/app_routes.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';
import 'package:flutter_demo/base/widgets/app_double_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 40,
          ),
          Text(
            "What are you looking for?",
            style: AppStyles.headlineStyle1.copyWith(fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          const TicketTabs(firstTabText: "Flight Tickets", secondTabText: "Hotels",),
          const SizedBox(
            height: 25,
          ),
          const TextIcon(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          const SizedBox(
            height: 20,
          ),
          const TextIcon(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          const SizedBox(
            height: 25,
          ),
          const FindTickets(),
          const SizedBox(
            height: 25,
          ),
          AppDoubleText(
            title: 'Upcoming Flights',
            details: 'View all',
            func: () => Navigator.pushNamed(context, AppRoutes.allTickets),
          ),
          const SizedBox(
            height: 15,
          ),
          const TicketPromotion()
        ],
      ),
    );
  }
}
