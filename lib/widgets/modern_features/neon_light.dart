import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class NeonLight extends StatefulWidget {
  const NeonLight({super.key});

  @override
  State<NeonLight> createState() => _NeonLightState();
}

class _NeonLightState extends State<NeonLight> {
//######################################################//
  bool isPressed = false;
//######################################################//

  @override
  Widget build(BuildContext context) {
    Color shadowColour = Colors.blueAccent;
    Color backgroundColur = shadowColour.withOpacity(0.6);
    return Center(
      child: Listener(
        onPointerDown: (event) => setState(() {
          isPressed = true;
        }),
        onPointerUp: (event) => setState(() {
          isPressed = false;
        }),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: isPressed ? backgroundColur : null,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              for (double i = 1; i < 5; i++)
                BoxShadow(
                  color: shadowColour,
                  blurRadius: (isPressed ? 5 : 3) * i,
                  inset: true,
                ),
              for (double i = 1; i < 5; i++)
                BoxShadow(
                  spreadRadius: -1,
                  color: shadowColour,
                  blurRadius: (isPressed ? 5 : 3) * i,
                  blurStyle: BlurStyle.outer,
                ),
            ],
          ),
          child: TextButton(
            onHover: (hover) => setState(() {
              isPressed = hover;
            }),
            onPressed: () {},
            style: TextButton.styleFrom(
                padding: const EdgeInsets.all(20),
                side: const BorderSide(color: Colors.white, width: 3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
            child: Text(
              'Neon Light',
              style: TextStyle(fontSize: 30, color: Colors.white, shadows: [
                for (double i = 1; i < (isPressed ? 8 : 4); i++)
                  Shadow(
                    color: shadowColour,
                    blurRadius: 3 * i,
                  ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
