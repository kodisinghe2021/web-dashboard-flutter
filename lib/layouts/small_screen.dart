import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/major_cards/major_middle_card.dart';
import 'package:web_page_app/compononts/major_cards/major_right_side_card.dart';
import 'package:web_page_app/const_functions.dart';
import 'package:web_page_app/controllers/major_card_details.dart';
import 'package:web_page_app/widgets/arrow_icon/arrow_icon.dart';
import 'package:web_page_app/compononts/major_cards/major_left_side_card.dart';
import 'package:web_page_app/compononts/secondry_cards/simple_card.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/widgets/cards/wide_large_card.dart';

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //~                                     first Row                               //
          Expanded(
              flex: 5,
              child: Container(
                child: const WideLargeCard(),
              )),
          //~    Second row      //
          Expanded(
              flex: 5,
              child: Row(
                children: [
                  //&                                    left side card                          //
                  itemCard(
                    MajorLeftSideCard(
                        topText: dataMap[1]['topText'],
                        midText: dataMap[1]['midText'],
                        bottmText: dataMap[1]['bottomText']),
                  ),

                  //&                                    Middle card                             //

                  itemCard(
                    MajorMiddleCard(
                        topText: dataMap[1]['topText'],
                        midText: dataMap[1]['midText'],
                        bottmText: dataMap[1]['bottomText']),
                  ),

                  //&                                    Right side card                         //

                  itemCard(
                    MajorRightSideCard(
                        topText: dataMap[1]['topText'],
                        midText: dataMap[1]['midText'],
                        bottmText: dataMap[1]['bottomText']),
                  ),

                  //&                                    Boundry Item                            //
                  Expanded(
                    flex: 1,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(0, 100, 10, 100),
                      child: const Carousel(),
                    ),
                  ),
                ],
              )),
          //~                                     third  row                              //
          Expanded(
            flex: 3,
            child: Row(
              children: [
                //&                                    left side card                 //
                Expanded(
                  flex: 5,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: const SimpleCard(
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
                  ),
                ),
                //&                                    Middle card                   //
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const SimpleCard(
                        textTop: 'Heart Rate',
                        textMid: '85 bpm',
                        textBot: '5% Lesser',
                        icon: Icon(
                          Icons.hourglass_empty,
                          color: kvio,
                        ),
                        logo: Icon(
                          Icons.health_and_safety,
                          color: kboxBorderColor,
                        ),
                      ),
                    )),
                //&                                    Right side card               //
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const SimpleCard(
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
                    )),
                //&                                    Boundry Item                   //
                Expanded(
                  flex: 1,
                  child: Container(
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(0, 50, 10, 50),
                      child: Carousel(),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
