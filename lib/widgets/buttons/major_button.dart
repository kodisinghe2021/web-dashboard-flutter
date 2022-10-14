import 'package:flutter/material.dart';

class MajorButton extends StatefulWidget {
  MajorButton({
    super.key,
    this.text = 'Go Premium',
    required this.onTap,
  });

  final String text;
  Function() onTap;
  @override
  State<MajorButton> createState() => _MajorButtonState();
}

class _MajorButtonState extends State<MajorButton> {
//######################################################################//
  bool isTapped = true;
  double opacityI = 1.0;
//######################################################################//
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (details) {
        setState(() {
          isTapped = false;
        });
      },
      onTapUp: (details) {
        setState(() {
          isTapped = true;
        });
      },
      child: MouseRegion(
        onEnter: (event) => setState(() {
          opacityI = .7;
        }),
        onExit: (event) => setState(() {
          opacityI = 1;
        }),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          width: 200,
          height: 50,
          decoration: BoxDecoration(
            color: const Color(0xFFFAA5CC).withOpacity(opacityI),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 3,
              color: const Color(0xFFFFA5CC).withOpacity(.9),
            ),
            boxShadow: [
              if (isTapped)
                BoxShadow(
                  color: const Color(0xFFFFA5CC).withOpacity(.7),
                  offset: const Offset(0, 10),
                  spreadRadius: 1,
                  blurRadius: 10,
                )
            ],
          ),
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(
                  fontFamily: 'Roboto-Regular',
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  shadows: [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(5, 5),
                      blurRadius: 3,
                      spreadRadius: 1,
                    ),
                  ]
                  //backgroundColor: Colors.black,
                  // foreground: Paint()
                  //   ..style = PaintingStyle.stroke
                  //   ..strokeWidth = 1
                  //   ..color = Colors.blue[700]!,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
