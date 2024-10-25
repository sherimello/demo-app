import 'package:demo_app/sql%20database%20with%20stateless%20widget,%20getx,%20mvvm/models/user_info_model.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UserInfoHandler extends GetxController {
  late Database database;

  RxList<UserInfoModel> userInfoModel =
      [UserInfoModel(name: "".obs, age: 0.obs)].obs;

  Future<void> initializeDatabase() async {
    database = await openDatabase(join(await getDatabasesPath(), 'users.db'),
        onCreate: (db, version) {
      return db.execute(
          "CREATE TABLE IF NOT EXISTS users(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)");
    }, version: 2);
  }

  Future<void> fetchUsers() async {
    await database.query('users').then((v) {
      for (var a in v) {
        UserInfoModel userInfo = UserInfoModel(
            name: a["name"].toString().obs, age: (a["age"] as int).obs);
        userInfoModel.add(userInfo);
      }
      return v;
    });
    print(userInfoModel.last.age);
  }

  Future<void> insertUser(String name, int age) async {
    await database.insert('users', {'name': name, 'age': age},
        conflictAlgorithm: ConflictAlgorithm.replace);
    fetchUsers();
  }

  initDB() async {
    await initializeDatabase();
    await fetchUsers();
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    super.onInit();
    await initDB();
  }
}
