import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/columns/left_col.dart';
import 'package:web_page_app/constant.dart';
import 'package:web_page_app/helpers/responsiveness.dart';
import 'package:web_page_app/layouts/large_screen.dart';
import 'package:web_page_app/layouts/medium_screen.dart';
import 'package:web_page_app/layouts/mobile_screen.dart';
import 'package:web_page_app/layouts/small_screen.dart';
import 'package:web_page_app/widgets/nav_bars/top_nav_bar.dart';
import 'package:web_page_app/widgets/svg_helper/svg_helper.dart';

class HomeLayoutBuilder extends StatefulWidget {
  const HomeLayoutBuilder({super.key});

  @override
  State<HomeLayoutBuilder> createState() => _HomeLayoutBuilderState();
}

class _HomeLayoutBuilderState extends State<HomeLayoutBuilder> {
//###########################################################################//
  double sigmaXY = 10.0;
//###########################################################################//

  @override
  Widget build(BuildContext context) {
//^..........................................................//
    final screenSize = MediaQuery.of(context).size;
    String w = (screenSize.width.toInt()).toString();
    String h = (screenSize.height.toInt()).toString();

    final GlobalKey<ScaffoldState> scafoldKey = GlobalKey();
//^..........................................................//

    return Scaffold(
      key: scafoldKey,
//^..........................................................//
      appBar: !ResponsiveWidget.isLargeScreen(context)
          ? topNavBar(context, scafoldKey)
          : null,
//^..........................................................//
      drawer: Drawer(
        width: getScreenSize(context).width * .4,
        child: const LeftSideCol(),
      ),
      //^..........................................................//
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
                    child: const ResponsiveWidget(
                      smallScreen: SmallScreen(),
                      mediumScreen: MediumScreen(),
                      largeScreen: LargeScreen(),
                      mobileScreen: MobileScreen(),
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
