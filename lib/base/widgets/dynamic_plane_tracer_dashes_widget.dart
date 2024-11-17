import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class DynamicPlaneTracerDashesWidget extends StatelessWidget {
  final int randonDivider;
  final double width;
  final bool? isColor;
  const DynamicPlaneTracerDashesWidget({super.key, required this.randonDivider, this.width = 3, this.isColor});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
      print("${constraints.constrainWidth()}");
      return Flex(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        direction: Axis.horizontal,
        children: List.generate((constraints.constrainWidth()/randonDivider).floor(), (index) => SizedBox(
          width: width,
          height: 1,
          child: DecoratedBox(decoration: BoxDecoration( color: isColor == null ? Colors.white : AppStyles.alternativeTicketViewColor)),
        )),
      );
    });
  }
}