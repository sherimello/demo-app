import 'package:demo_app/controllers/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedPreferencesExample extends StatelessWidget {
  const SharedPreferencesExample({super.key});

  @override
  Widget build(BuildContext context) {

    CounterController counterController = Get.put(CounterController());

    return Obx(() => Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        counterController.updateCounter();
      },
      backgroundColor: Colors.red,
        child: const Icon(Icons.plus_one, color: Colors.white,),
      ),
      body: Center(
        child: Text(
          counterController.i.value.toString(),
          style: const TextStyle(fontSize: 31),
        ),
      ),
    ));
  }
}
