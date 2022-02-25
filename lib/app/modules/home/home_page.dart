import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/modules/home/home_controller.dart';
import 'package:getx_pattern_starter_app/app/base/widgets/loading_widget.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetX<HomeController>(
        initState: (state) {
          Get.find<HomeController>().getAll();
        },
        builder: (controller) {
          final isLoading = controller.postList.length < 1;

          if (isLoading) return const LoadingWidget();

          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.postList[index].title ?? 'a'),
                subtitle: Text(controller.postList[index].body ?? 'b'),
                onTap: () => controller.goTo(
                  controller.postList[index],
                ),
              );
            },
            itemCount: controller.postList.length,
          );
        },
      ),
    );
  }
}
