import 'package:flutter/material.dart';

class BottomSheetContents extends StatelessWidget {

  final String tag;
  final Function function;

  const BottomSheetContents({super.key, required this.tag, required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => function(),
      child: Text(
        tag,
        style: const TextStyle(fontSize: 21),
      ),
    );
  }
}
