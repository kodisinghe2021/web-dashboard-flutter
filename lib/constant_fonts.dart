//* fonts   ---------------------------------------------------------//
import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';

Widget heading01(String text) => FittedBox(
      child: FontRoboto(
        text: text,
        color: kBlack,
        size: 39,
      ),
    );
Widget heading02(String text) => FittedBox(
      child: FontRoboto(
        text: text,
        color: kBlack,
        size: 22,
        weight: FontWeight.w400,
      ),
    );
Widget buttonText(BuildContext context, String text) => FontRoboto(
      text: text,
      color: kWhite,
      size: getScreenSize(context).width * .01,
      weight: FontWeight.w900,
      letterSpacing: 2,
      shadows: const [
        BoxShadow(
          color: Colors.black12,
          offset: Offset(5, 5),
          blurRadius: 3,
          spreadRadius: 1,
        ),
      ],
    );
Widget majorCardHeading01(String text) => FontRoboto(
      text: text,
      color: kWhite,
      size: 35,
      weight: FontWeight.w500,
      letterSpacing: 2,
    );
Widget majorCardHeading02(String text) => FontRoboto(
      text: text,
      color: kWhite,
      size: 22,
      weight: FontWeight.w500,
      letterSpacing: 2,
    );

FontRoboto subHeading(String text) => FontRoboto(
      text: text,
      size: 23,
    );
FittedBox rightSideCardtext(String text) => FittedBox(
      child: FontRoboto(
        text: text,
        weight: FontWeight.w400,
        color: kDisable,
        size: 16,
      ),
    );
Widget rightSideCardHeading(String text) => FontRoboto(
      text: text,
      weight: FontWeight.w600,
      color: kBlack,
      size: 18,
    );

FittedBox subscriptionCardTrailerTitle(String title) => FittedBox(
      child: FontRoboto(
        text: title,
        color: kOrange,
        size: 19,
        weight: FontWeight.w800,
      ),
    );

FittedBox subscriptionCardTrailerText(String text) => FittedBox(
      child: FontRoboto(
        text: text,
        color: kDisable,
        size: 15,
        weight: FontWeight.w500,
      ),
    );

FittedBox leftSideLogoHeading(String title) => FittedBox(
      child: FittedBox(
        child: FontRoboto(
          text: title,
          weight: FontWeight.w700,
          size: 30,
        ),
      ),
    );

  // FontRoboto(
  //               text: trailingTopText,
  //               color: kOrange,
  //               size: getScreenSize(context).width * .015,
  //             ),
  //             FontRoboto(
  //               text: trailingBotText,
  //               color: kDisable,
  //               size: getScreenSize(context).width * .01,
  //             ),