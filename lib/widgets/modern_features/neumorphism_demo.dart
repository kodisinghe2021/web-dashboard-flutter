import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeumorphismContainer extends StatefulWidget {
  const NeumorphismContainer({super.key});

  @override
  State<NeumorphismContainer> createState() => _NeumorphismContainerState();
}

class _NeumorphismContainerState extends State<NeumorphismContainer> {
//######################################################//
  bool onPressed = false;
//######################################################//
  @override
  Widget build(BuildContext context) {
    //######################################################//
    const backgroundColor = Colors.white;
    Offset offset = onPressed ? const Offset(10, 10) : const Offset(28, 28);
    double blur = onPressed ? 15.0 : 30.0;
//######################################################//
    return Listener(
      onPointerDown: (event) => setState(() {
        onPressed = true;
      }),
      onPointerUp: (event) => setState(() {
        onPressed = false;
      }),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backgroundColor,
          boxShadow: [
                  BoxShadow(
                    blurRadius: blur,
                    offset: -offset,
                    color: Colors.white,
                    inset: onPressed,
                  ),
                  BoxShadow(
                    blurRadius: blur,
                    offset: offset,
                    color: const Color(0xFFA7A9AF),
                    inset: onPressed,
                  ),
                ],
        ),
      ),
    );
  }
}
