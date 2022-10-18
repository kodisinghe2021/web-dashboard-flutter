import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/arrow_icon/arrow_icon.dart';
import 'package:web_page_app/compononts/graphs/bar_chart.dart';
import 'package:web_page_app/compononts/major_cards/l_s_card.dart';
import 'package:web_page_app/compononts/major_cards/mid_card.dart';
import 'package:web_page_app/compononts/major_cards/r_s_card.dart';
import 'package:web_page_app/compononts/secondry_cards/menu_item_row.dart';
import 'package:web_page_app/compononts/secondry_cards/my_account_container.dart';
import 'package:web_page_app/compononts/secondry_cards/neo_glass_card.dart';
import 'package:web_page_app/compononts/secondry_cards/profile_card.dart';
import 'package:web_page_app/compononts/secondry_cards/simple_card.dart';
import 'package:web_page_app/compononts/secondry_cards/subscription_card.dart';
import 'package:web_page_app/constance.dart';
import 'package:web_page_app/widgets/cards/wide_large_card.dart';
import 'package:web_page_app/widgets/custom_text/roboto_text.dart';
import 'package:web_page_app/widgets/custom_text/subscription_text.dart';
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
//~ first row     //
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40,
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            getScreenSize(context).width * .04,
                                        height:
                                            getScreenSize(context).width * .04,
                                        child: showSVG('assets/logo/atom.svg'),
                                      ),
                                      const Spacer(flex: 2),
                                      const FittedBox(
                                        child: FontRoboto(
                                          text: 'CLOUDY',
                                          weight: FontWeight.w600,
                                          size: 20,
                                        ),
                                      ),
                                      const Spacer(flex: 2),
                                    ],
                                  ),
                                ),
                              ),
//~ second row     //
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 100,
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 40,
                                  ),
                                  child: const NeoGlassCard(),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                child: Divider(thickness: 3),
                              ),
//~ third row     //
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 40),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 40),
                                            child: MenuItemRow(
                                              icon: Icons.dashboard,
                                              title: 'Dashboard',
                                              isSelected: true,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 25),
                                            child: MenuItemRow(
                                              icon: Icons.folder_open,
                                              title: 'My Folder',
                                              isSelected: false,
                                            ),
                                          ),
                                          MenuItemRow(
                                            icon: Icons.settings,
                                            title: 'Settings',
                                            isSelected: false,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenSize.height * .04,
                                    ),
                                    Row(
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 45),
                                          child: FontRoboto(
                                            text: '25.32GB used',
                                            size: 20,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 45),
                                  child: Container(
                                    height: screenSize.height * .01,
                                    decoration: BoxDecoration(
                                        color: kButton.withOpacity(.1),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: kButton.withOpacity(.3),
                                            offset: const Offset(0, 1),
                                            spreadRadius: 1,
                                            blurRadius: .1,
                                          )
                                        ]),
                                  )),
//~ fourth row     //
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(40),
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    elevation: 10,
                                    color: kLeftCardBottom,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        const FittedBox(
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                              vertical: 20,
                                              horizontal: 30,
                                            ),
                                            child: FontRoboto(
                                              text:
                                                  'Upgrade to Pro for Unlimited Storage',
                                              weight: FontWeight.w600,
                                              size: 16,
                                              color: kWhite,
                                              align: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                        Image.network(
                                          width: screenSize.width * .1,
                                          height: screenSize.height * .1,
                                          'https://picsum.photos/id/1015/400/300',
                                          fit: BoxFit.cover,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
                            // color: Colors.green.withOpacity(.3),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 40),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
//~   Profile card     //
                                const ProfileCard(),
//~   Text            //
                                const SubCriptText(text: 'Subscriptions'),
//~  Subcription cards   //
                                const SubscriptionCard(
                                  leadingUrl:
                                      'https://picsum.photos/id/109/300/300',
                                  text: 'Phone',
                                  title: 'Specture',
                                  trailingBotText: '04:33PM',
                                  trailingTopText: '-\$58',
                                ),

                                const SubscriptionCard(
                                  leadingUrl:
                                      'https://picsum.photos/id/119/300/300',
                                  text: 'Phone',
                                  title: 'Drop',
                                  trailingBotText: '04:33PM',
                                  trailingTopText: '-\$58',
                                ),

                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 20,
                                    ),
                                    child: Container(
                                      height: screenSize.height * .2,
                                      decoration: const BoxDecoration(),
                                      child: const NewBarChart(),
                                    ),
                                  ),
                                ),

//~  Text  //
                                const SubCriptText(text: 'My Accounts'),
//~ bottom card    //
                                const MyAccountContainer(),
                                //   Spacer(),
                                //   SubscriptionCard(),
                              ],
                            ),
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
