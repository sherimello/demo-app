import 'package:sqflite/sqflite.dart';
import 'package:get/get.dart';

class UserInfoModel {
  late RxString name;
  late RxInt age;

  UserInfoModel({required this.name, required this.age});
}
