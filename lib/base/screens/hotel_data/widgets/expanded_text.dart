import 'package:flutter/material.dart';
import 'package:flutter_demo/base/util/styles/app_styles.dart';
import 'package:flutter_demo/controllers/text_expansion_controller.dart';
import 'package:get/get.dart';

class ExpandedText extends StatelessWidget {
  final String text;
  ExpandedText({super.key, required this.text});

  final TextExpansionController controller = Get.put(TextExpansionController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {

      var textWidget = Text(
        text,
        maxLines: controller.isExpanded.value ? null : 4,
        overflow: controller.isExpanded.value ? TextOverflow.visible : TextOverflow.ellipsis,
      );

      return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textWidget,
        GestureDetector(
          onTap: () {
            controller.toggleExpansion();
          },
          child: Text(
            controller.isExpanded.value ? "Hide" : "Learn more",
            style: AppStyles.headlineStyle4.copyWith(
              color: AppStyles.primaryColor),
          ),
        )
      ],
    );
    });
  }
}