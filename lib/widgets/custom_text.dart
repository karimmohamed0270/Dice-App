import 'package:flutter/material.dart';
class text_widget extends StatelessWidget {
  final String msg;
  text_widget({
    super.key,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      style: const TextStyle(
          color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
