import 'package:getx_pattern_starter_app/app/data/provider/api_provider.dart';

class PostsRepository {
  final ApiProvider apiClient;

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
