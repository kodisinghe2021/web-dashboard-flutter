import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/constant_fonts.dart';

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
          duration: const Duration(milliseconds: 50),
          width: majorButtonWidth(context)[0],
          height: majorButtonWidth(context)[1],
          decoration: BoxDecoration(
            color: kButton.withOpacity(opacityI),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              width: 3,
              color: kButton.withOpacity(.9),
            ),
            boxShadow: [
              if (isTapped)
                BoxShadow(
                  color: kButton.withOpacity(.7),
                  offset: const Offset(0, 10),
                  spreadRadius: 1,
                  blurRadius: 10,
                )
            ],
          ),
          child: Center(
            child: buttonText(context, widget.text),
          ),
        ),
      ),
    );
  }
}
