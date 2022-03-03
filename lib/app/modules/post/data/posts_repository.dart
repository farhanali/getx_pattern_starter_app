import 'package:getx_pattern_starter_app/app/modules/post/data/post_api_provider.dart';

class PostsRepository {
  final PostApiProvider apiClient;

  PostsRepository({
    required this.apiClient,
  });

  getAll() {
    return apiClient.getAll();
  }

  getId(id) {
    return apiClient.getId(id);
  }
}
