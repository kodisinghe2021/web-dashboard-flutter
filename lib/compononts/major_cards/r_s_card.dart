import 'package:flutter/material.dart';
import 'package:web_page_app/constance.dart';
import 'package:web_page_app/widgets/cards/card_items/card_logo.dart';
import 'package:web_page_app/widgets/cards/card_items/portrait_card.dart';
import 'package:web_page_app/widgets/custom_text/custom_text.dart';

class RightSideCard extends StatelessWidget {
  const RightSideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 40),
            child: const PortraitCard(
              topGradiant: kRightCardTop,
              bottomGradiant: kRightCardBottom,
            ),
          ),
          const Positioned(
            left: 20,
            child: SizedBox(
              width: 70,
              height: 70,
              child: LogoInCard(),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 80, 10, 10),
            child: FittedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HeadingOne(
                    text: 'Payment Due',
                    size: 20,
                  ),
                  SizedBox(height: 10),
                  HeadingOne(
                    text: '10 Days',
                    size: 25,
                  ),
                  SizedBox(height: 70),
                  HeadingOne(
                    text: 'S8.99',
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
