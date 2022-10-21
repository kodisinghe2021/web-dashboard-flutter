import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/widgets/svg_helper/svg_helper.dart';

class LogoInCard extends StatelessWidget {
  const LogoInCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: logoBorderColor.withOpacity(.5),
          width: 1,
        ),
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: kMiddleCardBottom.withOpacity(.5),
            offset: const Offset(
              0.0,
              4.0,
            ),
            blurRadius: 15,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: kMiddleCardTop.withOpacity(.5),
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
        padding: const EdgeInsets.all(20),
        child: showSVG('assets/logo/img01.svg'),
      ),
    );
  }
}
