
import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';

class HeavyDevider extends StatelessWidget {
  const HeavyDevider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getScreenSize(context).height * .01,
      decoration: BoxDecoration(
          color: kButton.withOpacity(.1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: kButton.withOpacity(.3),
              offset: const Offset(0, 1),
              spreadRadius: 1,
              blurRadius: .1,
            )
          ]),
    );
  }
}
