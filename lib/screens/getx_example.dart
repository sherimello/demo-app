import 'package:demo_app/controllers/controller1.dart';
import 'package:demo_app/screens/home.dart';
import 'package:demo_app/widgets/getx_example_widgets/bottom_sheet_contents.dart';
import 'package:demo_app/widgets/getx_example_widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxExample extends StatelessWidget {
  const GetxExample({super.key});

  @override
  Widget build(BuildContext context) {
    Controller1 controller1 = Get.put(Controller1());
    RxInt i = 0.obs;

    return Obx(() => Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              controller1.updateData();
            },
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  controller1.data.value,
                  style: const TextStyle(fontSize: 31),
                ),
                Buttons(
                    tag: "navigate",
                    function: () {
                      Get.to(const Home());
                    }),
                Buttons(
                    tag: "show snackbar",
                    function: () {
                      Get.snackbar("demo snackbar", "hello world!");
                    }),
                Buttons(
                    tag: "show dialog",
                    function: () {
                      Get.defaultDialog(
                          title: "demo dialog",
                          content: const Text("hello world!"));
                    }),
                Buttons(
                    tag: "show bottom sheet",
                    function: () {
                      Get.bottomSheet(Container(
                        width: Get.width,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(17),
                                topRight: Radius.circular(17))),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 17),
                              child: BottomSheetContents(tag: "light mode", function: () {
                                Get.changeTheme(ThemeData.light());
                              },)
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 17.0),
                              child: BottomSheetContents(tag: "dark mode", function: () {
                                Get.changeTheme(ThemeData.dark());
                              },)
                            ),
                            const SizedBox(
                              height: 17,
                            )
                          ],
                        ),
                      ));
                    }),
              ],
            ),
          ),
        ));
  }
}
