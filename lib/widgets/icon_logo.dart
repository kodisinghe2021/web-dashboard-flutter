
import 'package:flutter/material.dart';

class IconLogoEndOfText extends StatelessWidget {
  const IconLogoEndOfText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 130,
      top: 20,
      child: Container(
        width: 25,
        height: 25,
        decoration: const BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
        ),
        child: const Icon(Icons.face_outlined),
      ),
    );
  }
}
