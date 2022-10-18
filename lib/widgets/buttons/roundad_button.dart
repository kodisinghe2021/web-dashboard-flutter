import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:web_page_app/constance.dart';

class RoundadButton extends StatefulWidget {
  const RoundadButton({
    Key? key,
  }) : super(key: key);

  @override
  State<RoundadButton> createState() => _RoundadButtonState();
}

class _RoundadButtonState extends State<RoundadButton> {
  bool mouseEnter = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getScreenSize(context).width * .05,
      width: getScreenSize(context).width * .05,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: FittedBox(
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: kButton.withOpacity(.4),
                      blurRadius: 30,
                      spreadRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: FittedBox(
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
                    width: getScreenSize(context).width * .05,
                    height: getScreenSize(context).width * .05 - 30,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: kButton.withOpacity(.5),
                        strokeAlign: StrokeAlign.outside,
                      ),
                      shape: BoxShape.circle,
                      color: kButton,
                    ),
                    child: const FittedBox(
                      child: Padding(
                        padding: EdgeInsets.all(19.0),
                        child: Icon(
                          Icons.add,
                          color: kWhite,
                          size: 40,
                          shadows: [
                            // for (double i = 1; i < 2; i++)
                            //   BoxShadow(
                            //     color: kWhite,
                            //     blurRadius: (mouseEnter ? 3 : 1) * i,
                            //     inset: true,
                            //   ),
                            // for (double i = 1; i < 2; i++)
                            //   BoxShadow(
                            //     spreadRadius: -1,
                            //     color: kWhite,
                            //     blurRadius: (mouseEnter ? 3 : 1) * i,
                            //     blurStyle: BlurStyle.outer,
                            //   ),
                          ],
                        ),
                      ),
                    ),
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
