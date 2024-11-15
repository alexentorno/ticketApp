import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class TicketMiddleCurvyPart extends StatelessWidget {
  final bool isRight;
  const TicketMiddleCurvyPart({super.key, required this.isRight});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppStyles.bgColor,
          borderRadius: isRight ? const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10)
          ) :
          const BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomLeft: Radius.circular(10)
          )
        )),
    );
  }
}