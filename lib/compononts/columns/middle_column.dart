import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/major_cards/major_middle_card.dart';
import 'package:web_page_app/compononts/major_cards/major_left_side_card.dart';
import 'package:web_page_app/compononts/major_cards/major_right_side_card.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/controllers/major_card_details.dart';
import 'package:web_page_app/widgets/arrow_icon/arrow_icon.dart';
import 'package:web_page_app/compononts/secondry_cards/simple_card.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/widgets/cards/wide_large_card.dart';

class MiddleColumn extends StatelessWidget {
  const MiddleColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
//~                                     first Row                            //
        itemCard(
          const WideLargeCard(),
          flex: 5,
          padding: const EdgeInsets.all(0),
        ),
//~                                     Second row                           //
        verticalMinBox(context),
        itemCard(
          Row(
            children: [
//&  left side card    //
              itemCard(
                MajorLeftSideCard(
                  topText: dataMap[0]['topText'],
                  midText: dataMap[0]['midText'],
                  bottmText: dataMap[0]['bottomText'],
                ),
                padding: const EdgeInsets.all(0),
              ),
//&  Middle card   //
              horizontalMinBox(context),
              itemCard(
                MajorMiddleCard(
                  topText: dataMap[1]['topText'],
                  midText: dataMap[1]['midText'],
                  bottmText: dataMap[1]['bottomText'],
                ),
                padding: const EdgeInsets.all(0),
              ),
//&  Right side card  //
              horizontalMinBox(context),
              itemCard(
                MajorRightSideCard(
                  topText: dataMap[2]['topText'],
                  midText: dataMap[2]['midText'],
                  bottmText: dataMap[2]['bottomText'],
                ),
                padding: const EdgeInsets.all(0),
              ),
//&  Boundry Item  //
              horizontalMinBox(context),
              itemCard(const Carousel(),
                  padding: const EdgeInsets.all(0), flex: 1),
            ],
          ),
          flex: 5,
          padding: const EdgeInsets.all(0),
        ),
//~ third  row     //
        verticalMinBox(context),
        Expanded(
          flex: 3,
          child: Row(
            children: [
//& left side card    //

              itemCard(
                const SimpleCard(
                  textTop: 'Blood Pressure',
                  textMid: '110/70',
                  textBot: '10% Higher',
                  icon: Icon(
                    Icons.line_axis,
                    color: kvio,
                  ),
                  logo: Icon(
                    Icons.bloodtype,
                    color: kboxBorderColor,
                  ),
                ),
                padding: const EdgeInsets.all(0),
              ),
              horizontalMinBox(context),
//&    Middle card    //

              itemCard(
                const SimpleCard(
                  textTop: 'Heart Rate',
                  textMid: '85 bpm',
                  textBot: '5% Lesser',
                  icon: Icon(
                    Icons.hourglass_empty,
                    color: kvio,
                  ),
                  logo: Icon(
                    Icons.bloodtype,
                    color: kboxBorderColor,
                  ),
                ),
                padding: const EdgeInsets.all(0),
              ),
              horizontalMinBox(context),
//& Right side card  //

              itemCard(
                const SimpleCard(
                  textTop: 'Blood Pressure',
                  textMid: '110/70',
                  textBot: '1% Higher',
                  icon: Icon(
                    Icons.line_axis_sharp,
                    color: kvio,
                  ),
                  logo: Icon(
                    Icons.bubble_chart,
                    color: kboxBorderColor,
                  ),
                ),
                padding: const EdgeInsets.all(0),
              ),
              horizontalMinBox(context),
//&  Boundry Item   //

              itemCard(const Carousel(),
                  flex: 1, padding: const EdgeInsets.all(0)),
            ],
          ),
        ),
      ],
    );
  }
}
