import 'package:flutter/material.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/constant_fonts.dart';

class LogoWithHeading extends StatelessWidget {
  const LogoWithHeading({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(flex: 1),
        SizedBox(
          width: getScreenSize(context).width * .03,
          height: getScreenSize(context).width * .03,
          child: showSVG('assets/logo/atom.svg'),
        ),
        horizontalMinBox(context),
        leftSideLogoHeading('COLUDY'),
        const Spacer(flex: 4),
      ],
    );
  }
}
