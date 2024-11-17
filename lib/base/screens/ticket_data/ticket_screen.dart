import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/base/screens/search/widgets/ticket_tabs.dart';
import 'package:flutter_demo/base/util/app_json.dart';
import 'package:flutter_demo/base/util/media.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';
import 'package:flutter_demo/base/widgets/column_text_placeholder.dart';
import 'package:flutter_demo/base/widgets/dynamic_plane_tracer_dashes_widget.dart';
import 'package:flutter_demo/base/widgets/text_placeholder_size4.dart';
import 'package:flutter_demo/base/widgets/ticket_view.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: padding.top,
          ),
          Text(
            "Tickets",
            style: AppStyles.headlineStyle1,
          ),
          const SizedBox(
            height: 20,
          ),
          const TicketTabs(
            firstTabText: 'Upcoming',
            secondTabText: 'Previous',
          ),
          const SizedBox(
            height: 20,
          ),
          // top section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TicketView(
              ticket: ticketList[0],
              isHorisontallyScrollable: false,
              isColor: false,
            ),
          ),
          // middle section
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color: AppStyles.ticketWhite,
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnTextPlaceholder(
                      topText: "Flutter DB",
                      bottomText: "Passenger",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    ColumnTextPlaceholder(
                      topText: "1234 5678",
                      bottomText: "Passport",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const DynamicPlaneTracerDashesWidget(
                  randonDivider: 15,
                  width: 5,
                  isColor: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ColumnTextPlaceholder(
                      topText: "123 456 789",
                      bottomText: "Number of e-tickets",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    ColumnTextPlaceholder(
                      topText: "B333556",
                      bottomText: "Booking code",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const DynamicPlaneTracerDashesWidget(
                  randonDivider: 15,
                  width: 5,
                  isColor: false,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppMedia.visaCard,
                              scale: 11,
                            ),
                            Text(
                              " *** 2544",
                              style: AppStyles.headlineStyle3,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const TextPlaceholderSize4(
                          text: "Payment method",
                          isColor: false,
                        ),
                      ],
                    ),
                    const ColumnTextPlaceholder(
                      topText: "\$249.99",
                      bottomText: "Price",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 4,
          ),
          // bottom section
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: AppStyles.ticketWhite,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(21),
                    bottomLeft: Radius.circular(21))),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: BarcodeWidget(
                  height: 70,
                  drawText: false,
                  color: AppStyles.textColor,
                  width: double.infinity,
                    data: 'https://www.instagram.com/ale_xentorno/',
                    barcode: Barcode.code128()),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TicketView(
              ticket: ticketList[0],
              isHorisontallyScrollable: false,
            ),
          )
        ],
      ),
    );
  }
}
