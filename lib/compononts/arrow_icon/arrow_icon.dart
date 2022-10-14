import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_page_app/constance.dart';

class ArrowIcon extends StatelessWidget {
  const ArrowIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 70,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: FittedBox(
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      color: kLeftCardBottom.withOpacity(.6),
                      spreadRadius: 7,
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: kBackGround,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      width: .5,
                      color: kBackGround.withOpacity(.5),
                      strokeAlign: StrokeAlign.outside,
                    ),
                  ),
                  child: const FittedBox(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 20,
                        color: boxBorderColor,
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.white.withOpacity(.01),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
