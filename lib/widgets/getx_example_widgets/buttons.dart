import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../screens/home.dart';

class Buttons extends StatelessWidget {

  final String tag;
  final Function function;

  const Buttons({super.key, required this.tag, required this.function});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => function(),
        child: Text(tag));
  }
}
