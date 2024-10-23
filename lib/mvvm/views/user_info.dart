import 'package:demo_app/mvvm/view%20models/user_data_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {


    var size = Get.size;

    Rx<UserDataViewModel> userDataViewModel = UserDataViewModel().obs;

    return Obx(() => Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: ${userDataViewModel.value.user.value.name}\nAge: ${userDataViewModel.value.user.value.age}"),
            const SizedBox(height: 11,),
            ElevatedButton(onPressed: (){
              userDataViewModel.value.updateUserInfo(name: "kona".obs, age: "18".obs);
            }, child: Text("update user data"))
          ],
        ),
      ),
    ));
  }
}