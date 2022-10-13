import 'package:flutter/material.dart';
import 'package:web_page_app/widgets/custom_text/custom_text.dart';
import 'package:web_page_app/widgets/svg_helper/svg_helper.dart';

class CardStyleOne extends StatelessWidget {
  const CardStyleOne({
    super.key,
    this.cardWidth = 400,
    this.logoAssetNAme = 'assets/logo/img01.svg',
    this.topText = 'Payment Due',
    this.midText = '10 days',
    this.bottomText = 'S8.90',
    this.topGradient = const Color(0xFFFDB1B3),
    this.bottomGradient = const Color(0xFF8F5EED),
    this.boxShadowColor = const Color(0xFFFAA5CC),
    this.boxBorderColor = const Color.fromARGB(255, 177, 167, 197),
    this.logoBorderColor = const Color.fromARGB(255, 135, 172, 191),
    this.logoPaddaging = 30,
  });
  //#########################################################################//
  final double cardWidth;
  final String logoAssetNAme;
  final String topText;
  final String midText;
  final String bottomText;
  final Color boxShadowColor;
  final Color topGradient;
  final Color bottomGradient;
  final Color boxBorderColor;
  final Color logoBorderColor;
  final double logoPaddaging;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: cardWidth,
          height: cardWidth * 1.49,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: boxShadowColor.withOpacity(.8),
                  offset: const Offset(
                    3.0,
                    3.0,
                  ),
                  blurRadius: 25,
                  spreadRadius: 1.0,
                ), //BoxShadow
              ],
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  topGradient,
                  bottomGradient,
                ],
              ),
              borderRadius: BorderRadius.circular(cardWidth * .075),
              border: Border.all(
                width: 1.0,
                color: boxBorderColor.withOpacity(0.2),
              )),
        ),
//logo outer circle container
        Positioned(
          top: cardWidth * .075,
          left: cardWidth * .075,
          child: Container(
            width: cardWidth * 0.29,
            height: cardWidth * 0.29,
            decoration: BoxDecoration(
              border: Border.all(
                color: logoBorderColor.withOpacity(.5),
                width: 1,
              ),
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: bottomGradient.withOpacity(.5),
                  offset: const Offset(
                    0.0,
                    4.0,
                  ),
                  blurRadius: 15,
                  spreadRadius: 1.0,
                ),
                BoxShadow(
                  color: topGradient.withOpacity(.5),
                  offset: const Offset(
                    -0.0,
                    -4.0,
                  ),
                  blurRadius: 15,
                  spreadRadius: 1.0,
                ), //BoxShadow//BoxShadow
              ],
            ),
            child: Padding(
              padding: EdgeInsets.all(logoPaddaging),
              child: showSVG(logoAssetNAme),
            ),
          ),
        ),
        Positioned(
          top: cardWidth * .5,
          left: cardWidth * .075,
          child: HeadingOne(
            text: topText,
            size: cardWidth * .075,
          ),
        ),
        Positioned(
          top: cardWidth * .675,
          left: cardWidth * .075,
          child: HeadingOne(text: midText, size: cardWidth * .1),
        ),
        Positioned(
          bottom: cardWidth * .125,
          left: cardWidth * .075,
          child: HeadingOne(text: bottomText, size: cardWidth * .1),
        ),
      ],
    );
  }
}
