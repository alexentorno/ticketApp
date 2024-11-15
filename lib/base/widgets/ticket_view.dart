import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';
import 'package:flutter_demo/base/widgets/column_text_placeholder.dart';
import 'package:flutter_demo/base/widgets/dynamic_plane_tracer_dashes_widget.dart';
import 'package:flutter_demo/base/widgets/big_dot.dart';
import 'package:flutter_demo/base/widgets/text_placeholder_size3.dart';
import 'package:flutter_demo/base/widgets/text_placeholder_size4.dart';
import 'package:flutter_demo/base/widgets/ticket_middle_curvy_part.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isHorisontallyScrollable;
  const TicketView({super.key, required this.ticket, this.isHorisontallyScrollable = true});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width*0.85,
      height: size.height*0.22,
      child: Container(
        margin: EdgeInsets.only(right: isHorisontallyScrollable ? 16 : 0),
        child: Column(
          children: [
            // blue part od the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(topLeft : Radius.circular(21), topRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  // show departure and destination with icons on first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextPlaceholderSize3(text: ticket["from"]["code"]),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(child: Stack(children: [
                        const SizedBox(
                          height: 24,
                          child: DynamicPlaneTracerDashesWidget(randonDivider: 7,),
                        ),
                        Center(
                          child: Transform.rotate(
                          angle: 1.57,
                          child: const Icon(
                            Icons.local_airport_rounded, 
                            color: Colors.white,)),)
                      ],)),
                      const BigDot(),
                      Expanded(child: Container()),
                      TextPlaceholderSize3(text: ticket["to"]["code"])
                    ],
                  ),
            
                  const SizedBox(height: 3,),
            
                  // show departure and destination names with time
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextPlaceholderSize4(text: ticket["from"]["name"]),
                      ),
                      Expanded(child: Container()),
                      TextPlaceholderSize4(text: ticket["flying_time"]),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TextPlaceholderSize4(text: ticket["to"]["name"], align: TextAlign.end,),
                      ),
                    ],
                  )
                           
                ],
              ),
            ),
            // middle curvy part wuth dashes
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  TicketMiddleCurvyPart(isRight: true,),
                  Expanded(child: DynamicPlaneTracerDashesWidget(randonDivider: 16, width: 6,)),
                  TicketMiddleCurvyPart(isRight: false,)
                ],
              ),
            ),
            // orange part od the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(bottomLeft : Radius.circular(21), bottomRight: Radius.circular(21))
              ),
              child: Column(
                children: [
                  // show departure and destination with icons on first line
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ColumnTextPlaceholder(
                        topText: ticket["date"], 
                        bottomText: "Date", 
                        alignment: CrossAxisAlignment.start,
                        ),
                      ColumnTextPlaceholder(
                        topText: ticket["departure_time"], 
                        bottomText: "Departure time", 
                        alignment: CrossAxisAlignment.center),
                      ColumnTextPlaceholder(
                        topText: ticket["number"].toString(), 
                        bottomText: "Number", 
                        alignment: CrossAxisAlignment.end)
                    ],
                  ),
            
                  SizedBox(
                    height: 3,
                  ),  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}