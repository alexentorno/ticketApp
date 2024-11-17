import 'package:flutter/material.dart';

class TicketTabs extends StatelessWidget {
  final String firstTabText;
  final String secondTabText; 
  const TicketTabs({super.key, required this.firstTabText, required this.secondTabText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromARGB(255, 234, 234, 234)
      ),
      child: Row(
        children: [
          AppTabs(tabText: firstTabText, isTabBorderOnTheRight: false, isActive: true,),
          AppTabs(tabText: secondTabText, isTabBorderOnTheRight: true, isActive: false,)
        ]
      ),
    );
  }
}

class AppTabs extends StatelessWidget {
  final String tabText;
  final bool isTabBorderOnTheRight;
  final bool isActive;
  const AppTabs({super.key, this.tabText = "", this.isTabBorderOnTheRight = false, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width*0.44,
            decoration: BoxDecoration(
              color: isActive ? Colors.white : Colors.transparent,
              borderRadius: isTabBorderOnTheRight ? const BorderRadius.horizontal(right: Radius.circular(50))
                                                  : const BorderRadius.horizontal(left: Radius.circular(50))
            ),
            child: Center(child: Text(tabText)),
         );
  }
}