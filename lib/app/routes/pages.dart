import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/modules/details/details_binding.dart';
import 'package:getx_pattern_starter_app/app/modules/home/home_binding.dart';
import 'package:getx_pattern_starter_app/app/modules/details/details_page.dart';
import 'package:getx_pattern_starter_app/app/modules/home/home_page.dart';
part 'routes.dart';

class Pages {
  static final all = [
    GetPage(
      name: Routes.INITIAL,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.DETAILS,
      page: () => const DetailsPage(),
      binding: DetailsBinding(),
    ),
  ];
}
