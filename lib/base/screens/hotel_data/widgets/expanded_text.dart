import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';

class ExpandedText extends StatefulWidget {
  final String text;
  const ExpandedText({super.key, required this.text});

  @override
  State<ExpandedText> createState() => _ExpandedTextState();
}

class _ExpandedTextState extends State<ExpandedText> {

  bool isExpanded = false;

    _toggleExpansion() {
      setState(() {
        isExpanded = !isExpanded;
      });
    }

  @override
  Widget build(BuildContext context) {
    
    var textWidget = Text(
      widget.text,
      maxLines: isExpanded ? null : 4,
      overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            _toggleExpansion();
          },
          child: Text(
            isExpanded ? "Hide" : "Learn more",
            style: AppStyles.headlineStyle4.copyWith(
              color: AppStyles.primaryColor),
          ),
        )
      ],
    );
  }
}