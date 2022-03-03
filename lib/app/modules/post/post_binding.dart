import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/modules/post/post_controller.dart';
import 'package:getx_pattern_starter_app/app/modules/post/data/post_api_provider.dart';
import 'package:getx_pattern_starter_app/app/modules/post/data/posts_repository.dart';
import 'package:http/http.dart' as http;

class PostBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostController>(() {
      return PostController(
        repository: PostsRepository(
          apiClient: PostApiProvider(httpClient: http.Client()),
        ),
      );
    });
  }
}
