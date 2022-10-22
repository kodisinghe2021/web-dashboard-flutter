import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/columns/middle_column.dart';
import 'package:web_page_app/compononts/columns/right_side_coloumn.dart';
import 'package:web_page_app/compononts/graphs/bar_chart.dart';
import 'package:web_page_app/compononts/secondry_cards/my_account_container.dart';
import 'package:web_page_app/compononts/secondry_cards/profile_card.dart';
import 'package:web_page_app/compononts/secondry_cards/subscription_card.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/constant_fonts.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: setPadding(context)[6],
        child: Row(
          children: [
            itemCard(
//^  Left side Column   //
              const MiddleColumn(),
              flex: 5,
              padding: const EdgeInsets.all(0),
            ),
//^ Right side Column  //
            SizedBox(width: horizontalSpace(context)),
            itemCard(
              const RightSideColumn(),
              flex: 2,
              padding: const EdgeInsets.all(0),
            ),
          ],
        ),
      ),
    );
  }
}
