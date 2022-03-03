import 'package:get/get.dart';
import 'package:getx_pattern_starter_app/app/modules/post/data/model/post.dart';
import 'package:getx_pattern_starter_app/app/modules/post/data/posts_repository.dart';

class PostController extends GetxController {
  // public instance variables goes first
  final PostsRepository repository;

  // private instance variables goes after
  final _post = Post().obs;

  // constructors goes after
  PostController({
    required this.repository,
  });

  // getters and setters goes next
  get post => _post.value;
  set post(value) => _post.value = value;

  showPost() {
    print('Post: $post');
  }

  deletePost() {
    print('Delete post: $post');
  }

  editPost() {
    print('Edit post: $post');
  }

  // finally goes private methods if any in the order of usage
}
