import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/secondry_cards/neo_glass_card.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/constant_fonts.dart';
import 'package:web_page_app/widgets/cards/card_with_full_image.dart';
import 'package:web_page_app/widgets/deviders/heavy_devider.dart';
import 'package:web_page_app/widgets/left_side_logo_card.dart';
import 'package:web_page_app/widgets/menu_list_column.dart';

class LeftSideCol extends StatelessWidget {
  const LeftSideCol({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
//~ first row     //
        itemCard(
          const LogoWithHeading(),
          flex: 1,
          padding: const EdgeInsets.all(0),
        ),
        verticalMinBox(context),
//~ second row     //
        itemCard(
          const NeoGlassCard(),
          flex: 1,
          padding: const EdgeInsets.all(0),
        ),
        verticalMinBox(context),
        Padding(
          padding: setPadding(context)[5],
          child: const Divider(thickness: 3),
        ),
        verticalMinBox(context),
//~ third row     //
        itemCard(
          const MenuListColumn(),
          flex: 2,
          padding: const EdgeInsets.all(0),
        ),
        verticalMinBox(context),
        subHeading('25.5GB used'),
        verticalMinBox(context),
//~ divider
        Padding(
          padding: setPadding(context)[5],
          child: const HeavyDevider(),
        ),
        verticalMinBox(context),
//~ fourth row     //
        itemCard(
          const CardWithFullImage(),
          flex: 2,
          padding: const EdgeInsets.all(0),
        ),
      ],
    );
  }
}
