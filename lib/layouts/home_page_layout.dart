import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/arrow_icon/arrow_icon.dart';
import 'package:web_page_app/compononts/major_cards/l_s_card.dart';
import 'package:web_page_app/compononts/major_cards/mid_card.dart';
import 'package:web_page_app/compononts/major_cards/r_s_card.dart';
import 'package:web_page_app/compononts/secondry_cards/simple_card.dart';
import 'package:web_page_app/constance.dart';
import 'package:web_page_app/widgets/cards/wide_large_card.dart';
import 'package:web_page_app/widgets/svg_helper/svg_helper.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
//###########################################################################//
  double sigmaXY = 10.0;
//###########################################################################//

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    String w = (screenSize.width.toInt()).toString();
    String h = (screenSize.height.toInt()).toString();
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: screenSize.width,
              height: screenSize.height,
              child: showSVG(
                'assets/images/low-poly-grid-haikei.svg',
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: screenSize.width,
              height: screenSize.height,
              color: kBackGround.withOpacity(.8),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: sigmaXY, sigmaY: sigmaXY),
                  child: Container(
                    width: screenSize.width * .99,
                    height: screenSize.height * .99,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: kMiddleCardTop.withOpacity(.6),
                          strokeAlign: StrokeAlign.inside,
                        ),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white60.withOpacity(.2),
                              Colors.blueAccent.withOpacity(.2),
                            ]),
                        borderRadius: BorderRadius.circular(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
//^                               Left side Column                           //
                        Expanded(
                          flex: 4,
                          child: Container(
                            color: Colors.amberAccent.withOpacity(.3),
                          ),
                        ),

//^                               Middle Column                              //
                        Expanded(
                          flex: 11,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
//~                                     first Row                               //
                              Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: const WideLargeCard(),
                                  )),
//~                                     Second row                              //
                              Expanded(
                                  flex: 5,
                                  child: Row(
                                    children: [
                                      //&                                    left side card                          //
                                      Expanded(
                                        flex: 5,
                                        child: Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 50, 10, 10),
                                          child: const LeftSideCard(),
                                        ),
                                      ),
                                      //&                                    Middle card                             //
                                      Expanded(
                                          flex: 5,
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 20, 10, 10),
                                            child: const MidCard(),
                                          )),
                                      //&                                    Right side card                         //
                                      Expanded(
                                          flex: 5,
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 50, 10, 10),
                                            child: const RightSideCard(),
                                          )),
                                      //&                                    Boundry Item                            //
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 100, 10, 100),
                                          child: const ArrowIcon(),
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
                                          icon: Icon(Icons.line_axis),
                                          logo: Icon(
                                              Icons.arrow_forward_ios_outlined),
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
                                            icon: Icon(Icons.abc),
                                            logo: Icon(Icons
                                                .arrow_forward_ios_outlined),
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
                                            textBot: '10% Higher',
                                            icon: Icon(Icons.line_axis),
                                            logo: Icon(Icons.bubble_chart),
                                          ),
                                        )),
//&                                    Boundry Item                   //
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: const Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              0, 50, 10, 50),
                                          child: ArrowIcon(),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
//^                               Right side Column                           //
                        Expanded(
                          flex: 5,
                          child: Container(
                            color: Colors.green.withOpacity(.3),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
