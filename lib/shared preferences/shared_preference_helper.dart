import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {

  Future<bool> containsKey(String key) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.containsKey(key);
  }

  setString(String key, value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    sharedPreferences.setString(key, value);

  }

  Future<String> getString(String key) async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key)!;
  }

}