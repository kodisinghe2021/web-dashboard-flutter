import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:web_page_app/constant.dart';

class RoundadButton extends StatefulWidget {
  const RoundadButton({
    Key? key,
    this.width,
  }) : super(key: key);
  final double? width;

  @override
  State<RoundadButton> createState() => _RoundadButtonState();
}

class _RoundadButtonState extends State<RoundadButton> {
  bool mouseEnter = false;

  @override
  Widget build(BuildContext context) {
    final double width = widget.width ?? getScreenSize(context).width * .05;
    return SizedBox(
      height: width,
      width: width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: MouseRegion(
              onEnter: (event) => setState(() {
                mouseEnter = true;
              }),
              onExit: (event) => setState(() {
                mouseEnter = false;
              }),
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeIn,
                opacity: mouseEnter ? .8 : .7,
                child: Container(
                  //   duration: const Duration(milliseconds: 100),
                  width: width,
                  height: width,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: kButton.withOpacity(.5),
                        strokeAlign: StrokeAlign.outside,
                      ),
                      shape: BoxShape.circle,
                      color: kButton,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 25),
                          blurRadius: 10,
                          spreadRadius: 2,
                          color: kButton.withOpacity(.4),
                        )
                      ]),
                  child: const Icon(
                    Icons.add,
                    color: kWhite,
                    size: 36,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
