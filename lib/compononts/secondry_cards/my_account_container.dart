import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/secondry_cards/my_accounts_card.dart';
import 'package:web_page_app/constant.dart';

class MyAccountContainer extends StatelessWidget {
  const MyAccountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          // height: getScreenSize(context).height * .2,
          padding: EdgeInsets.symmetric(
              vertical: getScreenSize(context).height * .03),
          decoration: BoxDecoration(
            color: kWhite.withOpacity(.3),
            border: Border.all(
              width: 3,
              color: kDisable.withOpacity(.9),
              strokeAlign: StrokeAlign.outside,
            ),
            borderRadius: commonBorderRadius,
          ),
          //~......................................//
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const MyAccountsCard(
                  imgUrl: 'assets/logo/img02.svg',
                  title: 'Turu.com',
                  text: 'hellow@turu.com',
                ),
                verticalMinBox(context),
                const MyAccountsCard(
                  imgUrl: 'assets/logo/img01.svg',
                  title: 'Page.ph',
                  text: 'gmawphane.com',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
