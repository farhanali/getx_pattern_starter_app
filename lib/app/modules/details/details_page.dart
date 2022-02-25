import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/modules/details/details_controller.dart';
import 'package:getx_pattern_starter_app/app/modules/details/widgets/bottom_card_widget.dart';
import 'package:getx_pattern_starter_app/app/modules/details/widgets/top_card_widget.dart';
import 'package:getx_pattern_starter_app/app/modules/home/home_controller.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 400,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(32),
          color: Colors.amber,
          child: GetX<DetailsController>(
            builder: (controller) {
              controller.post = Get.find<HomeController>().post;
              return ListView(
                children: <Widget>[
                  const CardTopCustomWidget(),
                  Container(height: 20),
                  const CardBottomCustomWidget(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
