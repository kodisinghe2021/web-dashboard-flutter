import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';

class SimpleCard extends StatelessWidget {
  const SimpleCard({
    super.key,
    required this.icon,
    required this.textTop,
    required this.textMid,
    required this.textBot,
    required this.logo,
  });
  //#########################################################################//
  final String textTop;
  final String textMid;
  final String textBot;
  final Icon icon;
  final Icon logo;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          color: kBackGround,
          border: Border.all(
            width: 1,
            color: kBackGround.withOpacity(.4),
            strokeAlign: StrokeAlign.outside,
          ),
          boxShadow: [
            BoxShadow(
              color: kMiddleCardBottom.withOpacity(.4),
              offset: const Offset(
                0,
                0,
              ),
              blurRadius: 5,
              spreadRadius: 0.5,
            ), //BoxShadow
          ],
          borderRadius: BorderRadius.circular(10)),
//~ child
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(
              flex: 1,
            ),
//~ Upper logo
            Expanded(
                flex: 6,
                child: FittedBox(
                  child: logo,
                )),
            const Spacer(
              flex: 2,
            ),
//~ Header Text
            Expanded(
                flex: 2,
                child: FittedBox(
                  child: FontRoboto(
                    text: textTop, //'Heart Rate',
                    color: kBlack,
                    weight: FontWeight.w500,
                  ),
                )),
            const Spacer(
              flex: 1,
            ),
            Expanded(
                flex: 2,
                child: FittedBox(
                  child: FontRoboto(
                    text: textMid, //'85 bpm',
                    color: kvio,
                  ),
                )),
            const Spacer(
              flex: 1,
            ),
            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    FittedBox(
                      child: icon,
                      // Icon(
                      //   Icons.line_axis,
                      //   color: kvio,
                      //   size: 30,
                      // ),
                    ),
                    const Spacer(flex: 1),
                    FittedBox(
                      child: FontRoboto(
                        text: textBot, //'5% lesser',
                        size: 22,
                        weight: FontWeight.w300,
                      ),
                    ),
                    const Spacer(flex: 8),
                  ],
                )),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
