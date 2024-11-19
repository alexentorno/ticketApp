import 'package:flutter/material.dart';
import 'package:flutter_demo/base/bottom_nav_bar.dart';
import 'package:flutter_demo/base/screens/home/view_all_hotels_screen.dart';
import 'package:flutter_demo/base/screens/home/view_all_tickets_screen.dart';
import 'package:flutter_demo/base/screens/hotel_data/hotel_screen.dart';
import 'package:flutter_demo/base/screens/ticket_data/ticket_screen.dart';
import 'package:flutter_demo/base/util/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.homePage: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const ViewAllTicketsScreen(),
        AppRoutes.ticketScreen: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const ViewAllHotelsScreen(),
        AppRoutes.hotelDetail: (context) => const HotelScreen(),
      },
    );
  }
}

