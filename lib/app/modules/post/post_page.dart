import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/modules/post/post_controller.dart';
import 'package:getx_pattern_starter_app/app/modules/post/widgets/post_body_widget.dart';
import 'package:getx_pattern_starter_app/app/modules/post/widgets/post_title_widget.dart';
import 'package:getx_pattern_starter_app/app/modules/home/home_controller.dart';

class PostPage extends GetView<PostController> {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(32),
          color: Colors.amber,
          child: GetX<PostController>(
            builder: (controller) {
              controller.post = Get.find<HomeController>().post;
              return ListView(
                children: <Widget>[
                  const PostTitleWidget(),
                  Container(height: 20),
                  const PostBodyWidget(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
