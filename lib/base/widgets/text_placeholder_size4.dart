import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class TextPlaceholderSize4 extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextPlaceholderSize4({super.key, 
                              required this.text, 
                              this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      textAlign: align,
      style: AppStyles.headlineStyle4.copyWith(
        color: Colors.white),);
  }
}