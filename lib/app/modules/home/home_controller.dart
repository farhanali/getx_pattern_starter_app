import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/modules/post/data/model/post.dart';
import 'package:getx_pattern_starter_app/app/modules/post/data/posts_repository.dart';
import 'package:getx_pattern_starter_app/app/routes/pages.dart';

class HomeController extends GetxController {
  // public instance variables goes first
  final PostsRepository repository;

  // private instance variables goes after
  final _postsList = <Post>[].obs;
  final _post = Post().obs;

  // constructors goes after
  HomeController({
    required this.repository,
  });

  // getters and setters goes next
  get postList => _postsList.value;
  set postList(value) => _postsList.value = value;

  get post => _post.value;
  set post(value) => _post.value = value;

  // then goes other public methods
  getAll() {
    repository.getAll().then((data) {
      postList = data;
    });
  }

  goTo(post) {
    this.post = post;
    Get.toNamed(Routes.DETAILS);
  }
}
