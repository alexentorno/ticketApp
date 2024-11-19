import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/app_json.dart';
import 'package:flutter_demo/base/util/app_routes.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';
import 'package:flutter_demo/base/widgets/ticket_view.dart';

class ViewAllTicketsScreen extends StatelessWidget {
  const ViewAllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      appBar: AppBar(
        title: const Text("All Tickets"),
        backgroundColor: AppStyles.bgColor,
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((ticket) => 
                GestureDetector(
                  onTap: () { 
                    var index = ticketList.indexOf(ticket);
                    Navigator.pushNamed(
                      context, 
                      AppRoutes.ticketScreen, 
                      arguments: {"index": index});
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: TicketView(ticket: ticket, isHorisontallyScrollable: false)
                  ),
                ),
              ).toList(),
            ),
          )
        ],
      ),
    );
  }
}