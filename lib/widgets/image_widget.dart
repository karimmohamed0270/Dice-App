import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  final String img;
  const ImageWidget({
    super.key, required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
                img,
                width: 150,
                height: 90,
              );
  }
}