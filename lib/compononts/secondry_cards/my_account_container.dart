import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/secondry_cards/my_accounts_card.dart';
import 'package:web_page_app/constance.dart';

class MyAccountContainer extends StatelessWidget {
  const MyAccountContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = getScreenSize(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
        child: Container(
          width: 150,
          height: screenSize.height * .2,
          decoration: BoxDecoration(
            color: kWhite.withOpacity(.1),
            border: Border.all(
              width: 2,
              color: kDisable.withOpacity(.7),
              strokeAlign: StrokeAlign.outside,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          //~......................................//
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                MyAccountsCard(
                  imgUrl: 'assets/logo/img02.svg',
                  title: 'Turu.com',
                  text: 'hellow@turu.com',
                ),
                MyAccountsCard(
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
