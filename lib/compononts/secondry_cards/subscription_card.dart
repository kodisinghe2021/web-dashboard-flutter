import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/constant_fonts.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({
    Key? key,
    required this.leadingUrl,
    required this.text,
    required this.title,
    required this.trailingBotText,
    required this.trailingTopText,
  }) : super(key: key);
  final String leadingUrl;
  final String title;
  final String text;
  final String trailingTopText;
  final String trailingBotText;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = getScreenSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      decoration: BoxDecoration(
          color: kBackGround,
          borderRadius: commonBorderRadius,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              color: kDisable.withOpacity(.7),
              spreadRadius: 2,
              blurRadius: 5,
            )
          ]),
      child: Row(
        children: [
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: commonBorderRadius,
            ),
            child: ClipRRect(
              borderRadius: commonBorderRadius,
              // child: Image.asset(
              //     'assets/images/avatar.png'),
              child: Image.network(
                leadingUrl,
                width: screenSize.width * .03,
                height: screenSize.height * .06,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                rightSideCardHeading(title),
                rightSideCardtext(text),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              // FontRoboto(
              //   text: trailingTopText,
              //   color: kOrange,
              //   size: getScreenSize(context).width * .015,
              // ),
              subscriptionCardTrailerTitle(trailingTopText),
              subscriptionCardTrailerText(trailingBotText),
              // FontRoboto(
              //   text: trailingBotText,
              //   color: kDisable,
              //   size: getScreenSize(context).width * .01,
              // ),
            ],
          )
        ],
      ),
    );
  }
}
