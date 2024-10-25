import 'package:get/get.dart';

import '../models/student_data_structure.dart';

class ManageStudentData extends GetxController{
  final Rx<StudentDataStructure> _studentDataStructure = StudentDataStructure(name: "inan".obs, id: "C183018".obs).obs;

  Rx<StudentDataStructure> get studentDataStructure => _studentDataStructure;

  updateStudentData({required RxString name, required RxString id}) {
    _studentDataStructure.value = StudentDataStructure(name: name, id: id);
  }

}