import 'dart:convert';
import 'package:getx_pattern_starter_app/app/data/model/post.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  static const baseUrl = 'https://jsonplaceholder.typicode.com/';

  final http.Client httpClient;

  ApiProvider({
    required this.httpClient,
  });

  getAll() async {
    try {
      final uri = Uri.parse(baseUrl + 'posts');
      final response = await httpClient.get(uri);
      if (response.statusCode == 200) {
        Iterable jsonResponse = json.decode(response.body);
        List<Post> listMyModel =
            jsonResponse.map((model) => Post.fromJson(model)).toList();
        return listMyModel;
      } else {
        print('Response error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  getId(id) async {
    try {
      final uri = Uri.parse(baseUrl + 'posts/$id');
      final response = await httpClient.get(uri);
      if (response.statusCode == 200) {
        //Map<String, dynamic> jsonResponse = json.decode(response.body);
      } else {
        print('Response error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
