import 'package:flutter/material.dart';
import 'package:web_page_app/constance.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';
import 'package:web_page_app/widgets/svg_helper/svg_helper.dart';

class MyAccountsCard extends StatelessWidget {
  const MyAccountsCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.text,
  }) : super(key: key);
  final String title;
  final String text;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: showSVG(imgUrl),
          ),
          const Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FontRoboto(
                text: title,
                weight: FontWeight.w800,
                size: 18,
              ),
              const Spacer(),
              FontRoboto(
                text: text,
                weight: FontWeight.w400,
                color: kDisable,
                size: 16,
              ),
            ],
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
