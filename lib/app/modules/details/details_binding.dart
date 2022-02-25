import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/modules/details/details_controller.dart';
import 'package:getx_pattern_starter_app/app/data/provider/api_provider.dart';
import 'package:getx_pattern_starter_app/app/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() {
      return DetailsController(
        repository: PostsRepository(
          apiClient: ApiProvider(httpClient: http.Client()),
        ),
      );
    });
  }
}
