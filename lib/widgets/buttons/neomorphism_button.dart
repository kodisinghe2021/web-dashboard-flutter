import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeoButton extends StatefulWidget {
  const NeoButton({super.key});

  @override
  State<NeoButton> createState() => _NeoButtonState();
}

class _NeoButtonState extends State<NeoButton> {
//######################################################//
  bool onPressed = false;
//######################################################//

  @override
  Widget build(BuildContext context) {
    //######################################################//
    const backgroundColor = Color(0xFFFAA5CC);
    Offset offset = onPressed ? const Offset(1, 1) : const Offset(3, 3);
    double blur = onPressed ? 10.0 : 5.0;
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
        width: 400,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              width: 2,
              color: const Color(0xFFFDB1B9),
            ),
            color: backgroundColor,
            boxShadow: [
              BoxShadow(
                blurRadius: blur,
                offset: -offset,
                color: backgroundColor,
                inset: onPressed,
              ),
              BoxShadow(
                blurRadius: blur,
                offset: offset,
                color: const Color(0xFFFDB1B3),
                inset: onPressed,
              ),
            ]),
      ),
    );
  }
}
