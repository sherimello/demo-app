import 'package:demo_app/mvvm/models/user_data_model.dart';
import 'package:get/get.dart';


class UserDataViewModel extends GetxController{

  final Rx<User> _user = User(name: "inan".obs, age: "25".obs).obs;

  Rx<User> get user => _user;

  updateUserInfo({required RxString name, required RxString age}) {
    _user.value = User(name: name, age: age);
  }

}