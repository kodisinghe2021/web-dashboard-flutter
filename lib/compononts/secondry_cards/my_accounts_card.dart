import 'package:flutter/material.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/constant_fonts.dart';

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
              rightSideCardHeading(title),
              const Spacer(),
              rightSideCardtext(text),
            ],
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}
