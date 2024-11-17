import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class TextPlaceholderSize3 extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TextPlaceholderSize3({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: isColor == null ? AppStyles.headlineStyle3.copyWith(
        color: Colors.white) : AppStyles.headlineStyle3,);
  }
}