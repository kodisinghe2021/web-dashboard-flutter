import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/columns/left_side_column.dart';
import 'package:web_page_app/compononts/columns/middle_column.dart';
import 'package:web_page_app/compononts/columns/right_side_coloumn.dart';
import 'package:web_page_app/compononts/graphs/bar_chart.dart';
import 'package:web_page_app/compononts/major_cards/major_middle_card.dart';
import 'package:web_page_app/compononts/major_cards/major_left_side_card.dart';
import 'package:web_page_app/compononts/major_cards/major_right_side_card.dart';
import 'package:web_page_app/compononts/secondry_cards/my_account_container.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/constant_fonts.dart';
import 'package:web_page_app/controllers/major_card_details.dart';
import 'package:web_page_app/widgets/arrow_icon/arrow_icon.dart';
import 'package:web_page_app/compononts/secondry_cards/profile_card.dart';
import 'package:web_page_app/compononts/secondry_cards/simple_card.dart';
import 'package:web_page_app/compononts/secondry_cards/subscription_card.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/widgets/cards/wide_large_card.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: setPadding(context)[6],
      child: Row(
        children: [
//^                               Left side Column                           //
          itemCard(
            const LeftSideCol(),
            flex: 4,
            padding: const EdgeInsets.all(0),
          ),
          horizontalMinBox(context),
//^                               Middle Column                              //
          itemCard(
            const MiddleColumn(),
            flex: 11,
            padding: const EdgeInsets.all(0),
          ),
          horizontalMinBox(context),
//^    Right side Column     //
          itemCard(const RightSideColumn(),
              flex: 5, padding: const EdgeInsets.all(0))
        ],
      ),
    );
  }
}
