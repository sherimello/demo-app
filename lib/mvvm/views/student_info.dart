import 'package:demo_app/mvvm/view%20models/student_data_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentInfo extends StatelessWidget {
  const StudentInfo({super.key});

  @override
  Widget build(BuildContext context) {

    var size = Get.size;
    Rx<ManageStudentData> manageStudentData = ManageStudentData().obs;

    return Obx(() => Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Name: ${manageStudentData.value.studentDataStructure.value.name.value}\nID: ${manageStudentData.value.studentDataStructure.value.id.value}"),
            const SizedBox(height: 11,),
            ElevatedButton(onPressed: (){
              manageStudentData.value.updateStudentData(name: "minhaz".obs, id: "C201212".obs);
            }, child: const Text("update data"))
          ],
        ),
      ),
    ));
  }
}


