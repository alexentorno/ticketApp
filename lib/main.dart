import 'package:flutter/material.dart';
import 'package:flutter_demo/base/bottom_nav_bar.dart';
import 'package:flutter_demo/base/screens/view_all_tickets_screen.dart';

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
        "/": (context) => const BottomNavBar(),
        "/all_tickets": (context) => const ViewAllTicketsScreen()
      },
    );
  }
}

