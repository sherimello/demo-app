import 'package:demo_app/shared%20preferences/shared_preferences_helper.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {

  RxInt i = 0.obs;
  SharedPreferencesHelper sharedPreferencesHelper = SharedPreferencesHelper();


  @override
  Future<void> onInit() async {
    super.onInit();
    if(await sharedPreferencesHelper.containsKey("counter")) {
      i.value = int.parse(await sharedPreferencesHelper.getString("counter"));
    }
  }

  updateCounter() {
    i.value = i.value + 1;
    sharedPreferencesHelper.saveString("counter", i.value.toString());
  }

}