import 'package:demo_app/mvvm/views/user_info.dart';
import 'package:demo_app/screens/getx_example.dart';
import 'package:demo_app/screens/home.dart';
import 'package:demo_app/shared%20preferences/shared_preferences_example.dart';
import 'package:demo_app/sqflite/sqflite_example.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
        home: SqfliteExample());
  }
}