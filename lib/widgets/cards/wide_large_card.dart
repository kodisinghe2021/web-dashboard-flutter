import 'package:flutter/material.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/constant_fonts.dart';
import 'package:web_page_app/widgets/buttons/major_button.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';
import 'package:web_page_app/widgets/icon_logo.dart';

class WideLargeCard extends StatefulWidget {
  const WideLargeCard({
    super.key,
  });

  @override
  State<WideLargeCard> createState() => _WideLargeCardState();
}

class _WideLargeCardState extends State<WideLargeCard> {
  @override
  Widget build(BuildContext context) {
    return backGoundContainer(
      context,
      Row(
        children: [
//*  left side Column //
          Expanded(
            flex: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                heading01('Get Thousands of\nPremium Courses'),
                Stack(
                  children: [
                    heading02(
                      'Upgrade to watch, play, learn, make\nand discover.',
                    ),
                    const IconLogoEndOfText(),
                  ],
                ),
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

//~ bottom button ~//

                MajorButton(
                  onTap: () {},
                ),

//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
              ],
            ),
          ),
//*    Righte side Column  //
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                backGoundLargeImage(
                  context,
                  imageUrl: 'https://picsum.photos/id/195/1200/700',
                ),
                FontRoboto(
                  text: 'width: ${getScreenSize(context)}',
                  color: kWhite,
                )
              ], // 'https://picsum.photos/id/1015/1200/700'
            ),
          ),
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//
        ],
      ),
    );
  }
}
