import 'package:flutter/material.dart';

class DynamicPlaneTracerDashesWidget extends StatelessWidget {
  final int randonDivider;
  final double width;

  const DynamicPlaneTracerDashesWidget({super.key, required this.randonDivider, this.width = 3});

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
          child: const DecoratedBox(decoration: BoxDecoration( color: Colors.white)),
        )),
      );
    });
  }
}