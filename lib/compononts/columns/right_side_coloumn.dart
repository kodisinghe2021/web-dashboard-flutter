import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/graphs/bar_chart.dart';
import 'package:web_page_app/compononts/secondry_cards/my_account_container.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/constant_fonts.dart';
import 'package:web_page_app/compononts/secondry_cards/profile_card.dart';
import 'package:web_page_app/compononts/secondry_cards/subscription_card.dart';
import 'package:web_page_app/constant.dart';

class RightSideColumn extends StatelessWidget {
  const RightSideColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //~   Profile card     //
        const ProfileCard(),
        //~   Text            //
        verticalMinBox(context),
        subHeading('Subscription'),
        verticalMinBox(context),
        const SubscriptionCard(
          leadingUrl: 'https://picsum.photos/id/109/300/300',
          text: 'Phone',
          title: 'Specture',
          trailingBotText: '04:33PM',
          trailingTopText: '-\$58',
        ),
        verticalMinBox(context),
        const SubscriptionCard(
          leadingUrl: 'https://picsum.photos/id/119/300/300',
          text: 'Phone',
          title: 'Drop',
          trailingBotText: '04:33PM',
          trailingTopText: '-\$58',
        ),
        verticalMinBox(context),

        itemCard(
          const NewBarChart(),
          padding: const EdgeInsets.all(0),
        ),
        verticalMinBox(context),
//~  Text  //
        subHeading('My Accounts'),
        verticalMinBox(context),
//~ bottom card    //
        const MyAccountContainer(),
      ],
    );
  }
}
