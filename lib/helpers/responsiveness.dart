import 'package:flutter/material.dart';
import 'package:web_page_app/constant.dart';

const int mobileScreenSize = 480;
const int tabScreenSize = 990;
const int smallScreenSize = 1296;

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.smallScreen,
    required this.tabScreen,
    required this.largeScreen,
    required this.mobileScreen,
  });
//^ ---------------------------------------------------------------//
  final Widget largeScreen;
  final Widget tabScreen;
  final Widget smallScreen;
  final Widget mobileScreen;
//^ ---------------------------------------------------------------//
  static bool isMobileScreen(BuildContext context) =>
      getScreenSize(context).width <= mobileScreenSize;

  static bool isTabScreen(BuildContext context) =>
      getScreenSize(context).width < mobileScreenSize &&
      getScreenSize(context).width >= tabScreenSize;

  static bool isSmallScreen(BuildContext context) =>
      getScreenSize(context).width < tabScreenSize &&
      getScreenSize(context).width >= smallScreenSize;

  static bool isLargeScreen(BuildContext context) =>
      getScreenSize(context).width > smallScreenSize;
//^ ---------------------------------------------------------------//
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, boxConstraints) {
        double width = boxConstraints.maxWidth;
        if (width <= mobileScreenSize) {
          return mobileScreen;
        } else if (mobileScreenSize < width && width <= tabScreenSize) {
          return tabScreen;
        } else if (tabScreenSize < width && width <= smallScreenSize) {
          return smallScreen;
        } else {
          return largeScreen;
        }
      },
    );
  }
}
