import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/base/theme/app_text_theme.dart';
import 'package:getx_pattern_starter_app/app/modules/post/post_controller.dart';

class PostBodyWidget extends StatelessWidget {
  const PostBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<PostController>(
      builder: (controller) => Text(
        controller.post.body,
        style: cardTextStyle,
      ),
    );
  }
}
