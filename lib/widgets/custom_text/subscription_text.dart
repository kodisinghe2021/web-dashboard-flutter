import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';

class SubCriptText extends StatelessWidget {
  const SubCriptText({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = getScreenSize(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(
            width: screenSize.width * .06,
            height: screenSize.height * .06,
            child: FittedBox(
              child: FontRoboto(
                text: text,
                weight: FontWeight.w700,
                color: kBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
