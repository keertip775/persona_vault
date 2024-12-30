import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:persona_vault/model/user.dart';

class UserController extends GetxController {
  List<User> usersList = [];

  Future<void> getUsers() async {
    var res = await Dio().get("https://dummyjson.com/users");
    if (res.statusCode != 200) {
      print("api failed");
      return;
    }
    var users = res.data["users"];
    for (var user in users) {
      usersList.add(User.fromMap(user));
    }
    update();
  }
}
