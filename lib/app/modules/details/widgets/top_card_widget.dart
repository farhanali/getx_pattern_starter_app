import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/base/theme/app_text_theme.dart';
import 'package:getx_pattern_starter_app/app/modules/details/details_controller.dart';

class CardTopCustomWidget extends StatelessWidget {
  const CardTopCustomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<DetailsController>(
      builder: (controller) => Text(
        controller.post.title,
        style: cardTextStyle.copyWith(fontSize: 24),
      ),
    );
  }
}
