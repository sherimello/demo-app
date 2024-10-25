import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view models/student_data_view_model.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var size = Get.size;
    RxBool flag = false.obs;
    Rx<ManageStudentData> manageStudentData = ManageStudentData().obs;

    return Obx(() => Scaffold(
          body: SizedBox(
            width: size.width,
            height: size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    flag.value = !flag.value;
                  },
                  child: AnimatedContainer(
                    width: flag.value ? size.width * .65 : size.width * .35,
                    height: flag.value ? size.width * .65 : size.width * .35,
                    decoration: BoxDecoration(
                        color:
                            flag.value ? Colors.deepPurpleAccent : Colors.red,
                        borderRadius: flag.value
                            ? BorderRadius.circular(45)
                            : BorderRadius.circular(1000)),
                    duration: const Duration(milliseconds: 555),
                    curve: Curves.linearToEaseOut,
                    child: Center(
                      child: Text(
                        flag.value
                            ? "name: ${manageStudentData.value.studentDataStructure.value.name}\nid: ${manageStudentData.value.studentDataStructure.value.id}"
                            : "get data",
                        style: const TextStyle(
                          color: Colors.white,
                            fontSize: 21, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
