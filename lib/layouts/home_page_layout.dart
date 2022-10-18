import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/arrow_icon/arrow_icon.dart';
import 'package:web_page_app/compononts/graphs/bar_chart.dart';
import 'package:web_page_app/compononts/major_cards/l_s_card.dart';
import 'package:web_page_app/compononts/major_cards/mid_card.dart';
import 'package:web_page_app/compononts/major_cards/r_s_card.dart';
import 'package:web_page_app/compononts/secondry_cards/neo_glass_card.dart';
import 'package:web_page_app/compononts/secondry_cards/simple_card.dart';
import 'package:web_page_app/constance.dart';
import 'package:web_page_app/widgets/cards/wide_large_card.dart';
import 'package:web_page_app/widgets/custom_text/custom_text.dart';
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
                            // color: Colors.amberAccent.withOpacity(.3),
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
                                          width: 100,
                                          height: 100,
                                          child:
                                              showSVG('assets/logo/atom.svg'),
                                        ),
                                        const Spacer(flex: 1),
                                        const FontRoboto(
                                          text: 'CLOUDY',
                                          weight: FontWeight.w600,
                                          size: 30,
                                        ),
                                        const Spacer(flex: 4),
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
                                              padding: const EdgeInsets.only(
                                                  top: 40),
                                              child: MenuItemRow(
                                                icon: Icons.dashboard,
                                                title: 'Dashboard',
                                                isSelected: true,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
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
                                          borderRadius:
                                              BorderRadius.circular(10),
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
                                const MyAccountCard(),
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

class MyAccountCard extends StatelessWidget {
  const MyAccountCard({
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

class MyAccountsCard extends StatelessWidget {
  const MyAccountsCard({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.text,
  }) : super(key: key);
  final String title;
  final String text;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: showSVG(imgUrl),
          ),
          const Spacer(flex: 1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FontRoboto(
                text: title,
                weight: FontWeight.w800,
                size: 18,
              ),
              const Spacer(),
              FontRoboto(
                text: text,
                weight: FontWeight.w400,
                color: kDisable,
                size: 16,
              ),
            ],
          ),
          const Spacer(flex: 3),
        ],
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard({
    Key? key,
    required this.leadingUrl,
    required this.text,
    required this.title,
    required this.trailingBotText,
    required this.trailingTopText,
  }) : super(key: key);
  final String leadingUrl;
  final String title;
  final String text;
  final String trailingTopText;
  final String trailingBotText;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = getScreenSize(context);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 25),
      decoration: BoxDecoration(
          color: kBackGround,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 1),
              color: kDisable.withOpacity(.7),
              spreadRadius: 2,
              blurRadius: 5,
            )
          ]),
      child: Row(
        children: [
          Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              // child: Image.asset(
              //     'assets/images/avatar.png'),
              child: Image.network(
                leadingUrl,
                width: screenSize.width * .03,
                height: screenSize.height * .06,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FontRoboto(
                  text: title,
                  weight: FontWeight.w800,
                  size: 18,
                ),
                FontRoboto(
                  text: text,
                  weight: FontWeight.w400,
                  size: 14,
                  color: kDisable,
                ),
              ],
            ),
          ),
          const Spacer(),
          Column(
            children: [
              FontRoboto(
                text: trailingTopText,
                color: kOrange,
                size: 20,
              ),
              FontRoboto(
                text: trailingBotText,
                color: kDisable,
                size: 13,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class SubCriptText extends StatelessWidget {
  const SubCriptText({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    final Size screenSize = getScreenSize(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          SizedBox(
            width: screenSize.width * .06,
            height: screenSize.height * .06,
            child: FittedBox(
              child: FontRoboto(
                text: text,
                weight: FontWeight.w700,
                color: kBlack,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = getScreenSize(context);
    return Row(
      children: [
        Card(
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            // child: Image.asset(
            //     'assets/images/avatar.png'),
            child: Image.network(
              width: screenSize.width * .03,
              height: screenSize.width * .03,
              'https://picsum.photos/id/1/300/300',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              FontRoboto(
                text: 'Jonathan',
                weight: FontWeight.w800,
                size: 20,
              ),
              FontRoboto(
                text: 'Jonathan@turu.com',
                weight: FontWeight.w400,
                size: 16,
              ),
            ],
          ),
        ),
        const Spacer(),
        const CircullarNotificationBubble(),
      ],
    );
  }
}

class CircullarNotificationBubble extends StatelessWidget {
  const CircullarNotificationBubble({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = getScreenSize(context);
    return Container(
      width: screenSize.width * .03,
      height: screenSize.width * .03,
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: kDisable.withOpacity(.2),
        ),
        shape: BoxShape.circle,
      ),
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.notifications_outlined,
              size: 30,
              color: kDisable,
            ),
          ),
          Positioned(
            top: 15,
            right: 15,
            child: Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                color: kboxBorderColor,
                border: Border.all(
                  width: 1,
                  color: kboxBorderColor,
                  strokeAlign: StrokeAlign.outside,
                ),
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class MenuItemRow extends StatelessWidget {
  MenuItemRow({
    required this.icon,
    required this.title,
    required this.isSelected,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String title;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: isSelected ? kButton : kDisable,
        ),
        const Spacer(flex: 1),
        FittedBox(
          child: FontRoboto(
            text: title,
            color: isSelected ? kButton : kDisable,
            size: 17,
            weight: FontWeight.w500,
          ),
        ),
        const Spacer(flex: 5),
        FittedBox(
          child: Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
                color: isSelected ? kButton : kDisable,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    blurRadius: 1,
                    spreadRadius: .5,
                    color: isSelected ? kButton : kDisable,
                  )
                ]),
          ),
        ),
      ],
    );
  }
}
