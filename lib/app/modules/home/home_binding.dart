import 'package:getx_pattern_starter_app/app/modules/home/home_controller.dart';
import 'package:getx_pattern_starter_app/app/modules/post/data/post_api_provider.dart';
import 'package:getx_pattern_starter_app/app/modules/post/data/posts_repository.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
        repository: PostsRepository(
          apiClient: PostApiProvider(httpClient: http.Client()),
        ),
      );
    });
  }
}
