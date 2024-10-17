import 'package:get/get.dart';

class Controller1 extends GetxController{
  RxString data = "initial string".obs;

  void updateData() {
    data.value = "updated string";
  }

}