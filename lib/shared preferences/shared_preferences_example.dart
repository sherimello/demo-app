import 'package:demo_app/shared%20preferences/shared_preference_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesExample extends StatefulWidget {
  const SharedPreferencesExample({super.key});

  @override
  State<SharedPreferencesExample> createState() =>
      _SharedPreferencesExampleState();
}

class _SharedPreferencesExampleState extends State<SharedPreferencesExample> {
  SharedPreferenceHelper sharedPreferenceHelper = SharedPreferenceHelper();
  RxInt s = 0.obs;

  init() async {
    if (await sharedPreferenceHelper.containsKey("counter")) {
      s = int.parse(await sharedPreferenceHelper.getString("counter")).obs;
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: SizedBox(
            width: Get.size.width,
            height: Get.size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  s.value.toString(),
                  style: TextStyle(fontSize: 31),
                ),
                const SizedBox(
                  height: 11,
                ),
                ElevatedButton(
                    onPressed: () {
                      ++s;
                      SharedPreferences.getInstance().then((v) {
                        v.setString("counter", s.toString());
                      });
                    },
                    child: const Text("update data"))
              ],
            ),
          ),
        ));
  }
}
