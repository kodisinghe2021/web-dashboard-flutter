import 'dart:ui';

import 'package:flutter/material.dart';

class GlassNeumorphism extends StatefulWidget {
  const GlassNeumorphism({super.key});

  @override
  State<GlassNeumorphism> createState() => _GlassNeumorphismState();
}

class _GlassNeumorphismState extends State<GlassNeumorphism> {
//##########################################################//
  bool isTapped = false;
  double sigmaXY = 10.0;
//#########################################################//
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//
        Center(child: Image.network('https://picsum.photos/id/12/900/900')),
//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%//
        Listener(
          onPointerDown: (event) => setState(() {
            sigmaXY = 7.0;
          }),
          onPointerUp: (event) => setState(() {
            sigmaXY = 10.0;
          }),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 100),
            alignment: Alignment.center,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: sigmaXY, sigmaY: sigmaXY),
                child: Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white60.withOpacity(.2),
                          Colors.blueAccent.withOpacity(.2),
                        ]),
                    //color: Colors.white.withOpacity(.2),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 2, color: Colors.white30),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
