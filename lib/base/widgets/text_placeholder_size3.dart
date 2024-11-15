import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class TextPlaceholderSize3 extends StatelessWidget {
  final String text;
  const TextPlaceholderSize3({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: AppStyles.headlineStyle3.copyWith(
        color: Colors.white),);
  }
}