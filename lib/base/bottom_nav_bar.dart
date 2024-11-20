import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/base/screens/home/home_screen.dart';
import 'package:flutter_demo/base/screens/profile/profile_screen.dart';
import 'package:flutter_demo/base/screens/search/search_screen.dart';
import 'package:flutter_demo/base/screens/ticket_data/ticket_screen.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';
import 'package:flutter_demo/controllers/bottom_nav_controller.dart';
import 'package:get/get.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({super.key});
  
  //dependency injection part
  final BottomNavController controller = Get.put(BottomNavController());

  // list is iterated using list index
  final appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];

  // change our index for bottom nav bar
  

  // void _onItemTapped(int index) {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return Scaffold(
        backgroundColor: AppStyles.bgColor,
        body: appScreens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: controller.selectedIndex.value,

          onTap: controller.onItemTapped,
          
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
    });
  }
}
