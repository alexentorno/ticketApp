import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class StickyCircle extends StatelessWidget {
  final bool isPositionRight;
  const StickyCircle({super.key, required this.isPositionRight});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
            left: isPositionRight ? size.width*0.03 : size.width *0.93,
            top: size.height*0.5,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 2, color: AppStyles.textColor)
              ),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: AppStyles.textColor,
              ),
            )
          );
  }
}