import 'package:flutter/material.dart';
import 'package:web_page_app/constance.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';

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
          borderRadius: BorderRadius.circular(15),
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
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
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
                FontRoboto(
                  text: title,
                  weight: FontWeight.w800,
                  size: 18,
                ),
                FontRoboto(
                  text: text,
                  weight: FontWeight.w400,
                  size: 14,
                  color: kDisable,
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              FontRoboto(
                text: trailingTopText,
                color: kOrange,
                size: getScreenSize(context).width * .015,
              ),
              FontRoboto(
                text: trailingBotText,
                color: kDisable,
                size: getScreenSize(context).width * .01,
              ),
            ],
          )
        ],
      ),
    );
  }
}
