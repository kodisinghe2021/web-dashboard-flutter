import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/constant_fonts.dart';
import 'package:web_page_app/widgets/cards/card_items/portrait_card.dart';

import 'widgets/cards/card_items/card_logo.dart';

//~ give a container with flex and padding
Widget itemCard(
  Widget child, {
  int flex = 5,
  EdgeInsets padding = paddingSideCards,
}) =>
    Expanded(
        flex: flex,
        child: Container(
          padding: padding,
          child: child,
        ));

//* give a container with infinty width and heigth and the decoration background
Container backGoundContainer(BuildContext context, Widget child) => Container(
      padding: setPadding(context)[0],
      // width: double.infinity,
      // height: double.infinity,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: setBorderRadius(context)[0],
        border: Border.all(
          strokeAlign: StrokeAlign.outside,
          width: 1,
          color: kWhite.withOpacity(.2),
        ),
        boxShadow: [
          boxShadowMin,
        ],
      ),
      child: child,
    );

Container backGoundLargeImage(BuildContext context, {String? imageUrl}) =>
    Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          borderRadius: setBorderRadius(context)[1], boxShadow: [boxShadowMax]),
      child: ClipRRect(
        borderRadius: setBorderRadius(context)[1],
        child: Image.network(
          imageUrl ?? 'https://picsum.photos/id/1015/1200/700',
          fit: BoxFit.cover,
        ),
      ),
    );

//* Middle coloumn second row -side major card-       //

Widget majorCard(
  BuildContext context,
  String topText,
  String midText,
  String bottomText, {
  double? cardTopPadding,
  double? logoToppadding,
  Color? topG,
  Color? bottomG,
}) =>
    Stack(
      children: [
        Container(
          padding: EdgeInsets.only(top: cardTopPadding ?? 0),
          child: PortraitCard(
            topGradiant: topG ?? kRightCardTop,
            bottomGradiant: bottomG ?? kRightCardBottom,
          ),
        ),
        Positioned(
          top: logoToppadding ?? 0,
          left: 20,
          child: const SizedBox(
            width: 70,
            height: 70,
            child: LogoInCard(),
          ),
        ),
        Padding(
          padding: setPadding(context)[4],
          child: Column(
            children: [
              const Spacer(flex: 5),
              majorCardHeading02(topText),
              const Spacer(flex: 1),
              majorCardHeading01(midText),
              const Spacer(flex: 5),
              majorCardHeading01(bottomText),
              const Spacer(flex: 1),
            ],
          ),
        ),
      ],
    );

//* Middle coloumn second row -Middle major card-       //
