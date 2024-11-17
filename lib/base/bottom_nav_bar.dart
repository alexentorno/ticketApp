import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/base/screens/home/home_screen.dart';
import 'package:flutter_demo/base/screens/search/search_screen.dart';
import 'package:flutter_demo/base/screens/ticket_data/ticket_screen.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // list is iterated using list index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Center(child: Text("Profile"))
  ];

  // change our index for bottom nav bar
  int _selectedIndex = 0;

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;      
    });
    //print("Tapped index is $_selectedIndex");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        backgroundColor: AppStyles.bgColor,
        body: appScreens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: _selectedIndex,

          onTap: _onItemTapped,
          
          selectedItemColor: const Color.fromARGB(255, 32, 87, 114),
          
          unselectedItemColor: Colors.grey,
          
          showSelectedLabels: false,
          
          items: const [
          
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                label: 'Home'),
          
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'Search'),
          
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: 'Tickets'),
          
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'Profile'),
          ],
        ));
  }
}
