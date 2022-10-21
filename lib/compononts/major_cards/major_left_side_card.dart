import 'package:flutter/material.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/constant.dart';

class MajorLeftSideCard extends StatelessWidget {
  const MajorLeftSideCard({
    super.key,
    required this.topText,
    required this.midText,
    required this.bottmText,
  });
  final String topText;
  final String midText;
  final String bottmText;
  @override
  Widget build(BuildContext context) {
    return majorCard(
      context,
      topText,
      midText,
      bottmText,
      cardTopPadding: 35,
      topG: kLeftCardTop,
      bottomG: kLeftCardBottom,
    );
  }
}
