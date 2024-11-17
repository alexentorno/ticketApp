import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/app_json.dart';
import 'package:flutter_demo/base/widgets/ticket_view.dart';

class ViewAllTicketsScreen extends StatelessWidget {
  const ViewAllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((ticket) => Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: TicketView(ticket: ticket, isHorisontallyScrollable: false)
                )
              ).toList(),
            ),
          )
        ],
      ),
    );
  }
}