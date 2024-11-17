import 'package:flutter/material.dart';
import 'package:flutter_demo/base/widgets/text_placeholder_size3.dart';
import 'package:flutter_demo/base/widgets/text_placeholder_size4.dart';

class ColumnTextPlaceholder extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  final bool? isColor;

  const ColumnTextPlaceholder(
    {super.key, 
    required this.topText, 
    required this.bottomText,
    required this.alignment, 
    this.isColor});

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: alignment,
            children: [
              TextPlaceholderSize3(text: topText, isColor: isColor,),
              const SizedBox(height: 5,),
              TextPlaceholderSize4(text: bottomText, isColor: isColor,)
            ],
          );
  }
}