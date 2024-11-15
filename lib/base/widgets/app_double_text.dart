import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {

  final String title;
  final String details;
  final VoidCallback func;

  const AppDoubleText({super.key, 
                      required this.title, 
                      required this.details,
                      required this.func});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppStyles.headlineStyle2),
        InkWell(
          onTap: func,
          child: Text(details, style: AppStyles.linkStyle.copyWith(
            color: AppStyles.primaryColor
          )),
        )
      ],
    );
  }
}