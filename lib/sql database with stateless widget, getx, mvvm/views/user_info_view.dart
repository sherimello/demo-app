import 'package:demo_app/sql%20database%20with%20stateless%20widget,%20getx,%20mvvm/viewmodels/user_info_handler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    UserInfoHandler userInfoHandler = Get.put(UserInfoHandler());
    var size = Get.size;

    return Obx(() => Scaffold(
          body: SafeArea(
              child: SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: "enter your name if you are 25...",
                      hintStyle: TextStyle(
                        color: Colors.grey
                      )
                    ),
                    onSubmitted: (s) {
                      userInfoHandler.insertUser(s, 25);
                    },
                  ),
                ),
                SizedBox(height: 11,),
                Expanded(
                  child: ListView.builder(
                      itemCount: userInfoHandler.userInfoModel.length,
                      itemBuilder: (context, index) {
                        var userInfo = userInfoHandler.userInfoModel.elementAt(index);
                        return ListTile(
                          title: Text(userInfo.name.value.toString()),
                          subtitle: Text(userInfo.age.value.toString()),
                        );
                      }),
                ),
              ],
            ),
          )),
        ));
  }
}
