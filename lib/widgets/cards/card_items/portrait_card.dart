import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';

class PortraitCard extends StatelessWidget {
  const PortraitCard({
    super.key,
    required this.topGradiant,
    required this.bottomGradiant,
  });
  //#########################################################################//
  final Color topGradiant;
  final Color bottomGradiant;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
//###################################################################//
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: kMiddleCardBottom.withOpacity(.3),
                  offset: const Offset(
                    0,
                    0,
                  ),
                  blurRadius: 3,
                  spreadRadius: 0.2,
                ), //BoxShadow
              ],
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  topGradiant,
                  bottomGradiant,
                ],
              ),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 1.0,
                color: boxBorderColor.withOpacity(0.2),
              )),
        ),
//###################################################################//
      ],
    );
  }
}
