import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';

const int smallScreenSize = 630;
const int mediumScreenSize = 980;
const int largeScreenSize = 1370;

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.smallScreen,
    required this.mediumScreen,
    required this.largeScreen,
    required this.mobileScreen,
  });
//^ ---------------------------------------------------------------//
  final Widget largeScreen;
  final Widget mediumScreen;
  final Widget smallScreen;
  final Widget mobileScreen;
//^ ---------------------------------------------------------------//
  static bool isSmallScreen(BuildContext context) =>
      getScreenSize(context).width <= smallScreenSize;
  static bool isMediumScreen(BuildContext context) =>
      getScreenSize(context).width <= mediumScreenSize &&
      getScreenSize(context).width > smallScreenSize;
  static bool isLargeScreen(BuildContext context) =>
      getScreenSize(context).width > largeScreenSize;
//^ ---------------------------------------------------------------//
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        double width = boxConstraints.maxWidth;
        if (width <= smallScreenSize) {
          return mobileScreen;
        } else if (width > smallScreenSize && width <= mediumScreenSize) {
          return smallScreen;
        } else if (width > mediumScreenSize && width <= largeScreenSize) {
          return mediumScreen;
        } else {
          return largeScreen;
        }
      },
    );
  }
}
