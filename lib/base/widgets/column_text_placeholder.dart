import 'package:flutter/material.dart';
import 'package:flutter_demo/base/widgets/text_placeholder_size3.dart';

class ColumnTextPlaceholder extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment alignment;
  const ColumnTextPlaceholder(
    {super.key, 
    required this.topText, 
    required this.bottomText,
    required this.alignment});

  @override
  Widget build(BuildContext context) {
    return Column(
            crossAxisAlignment: alignment,
            children: [
              TextPlaceholderSize3(text: topText),
              const SizedBox(height: 5,),
              TextPlaceholderSize3(text: bottomText)
            ],
          );
  }
}