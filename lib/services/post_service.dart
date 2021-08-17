import 'package:dio/dio.dart';
import 'package:iti_training/models/post_model.dart';

class PostService{
  String mainUrl = 'https://jsonplaceholder.typicode.com/';
  String post = 'posts';

  Future<List<Post>> getPosts() async{
  List<Post> posts = [];
  Response response = await Dio().get('$mainUrl' + '$post');
  var data = response.data;
  data.forEach((post){
    posts.add(Post.fromJson(post));
  });
  return posts;
  }
}