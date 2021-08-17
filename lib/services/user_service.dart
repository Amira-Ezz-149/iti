import 'package:dio/dio.dart';
import 'package:iti_training/models/user_model.dart';

class UserService{
  String mainUrl = 'https://jsonplaceholder.typicode.com/';
  String user = 'users';

  Future<List<User>> getUsers() async{
    List<User> users = [];
    Response response = await Dio().get('$mainUrl' + '$user');
    var data = response.data;
    data.forEach((u){
      users.add(User.fromJson(u));
    });
    return users;
  }
}