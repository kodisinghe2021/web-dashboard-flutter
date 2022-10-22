import 'package:flutter/material.dart';

Size getScreenSize(BuildContext context) => MediaQuery.of(context).size;
//* Colours
const Color kLeftCardTop = Color(0xFFFFADAF);
const Color kLeftCardBottom = Color(0xFFFF98AF);

const Color kMiddleCardTop = Color(0xFFFDB1B3);
const Color kMiddleCardBottom = Color(0xFF8F5EED);

const Color kRightCardTop = Color(0xFF398EE9);
const Color kRightCardBottom = Color(0xFF16B8E9);

const Color kboxBorderColor = Color(0xFFDB1FB3);
const Color klogoBorderColor = Color.fromARGB(255, 135, 172, 191);

const Color boxBorderColor = Color.fromARGB(255, 177, 167, 197);
const Color logoBorderColor = Color.fromARGB(255, 135, 172, 191);

const Color kBackGround = Color(0xFFFAF7FE);
const Color kBlack = Colors.black;
const Color kvio = Color.fromARGB(255, 100, 49, 183);
const Color kWhite = Colors.white;

const Color kButton = Color(0xFFFAA5CC);

const Color kDisable = Color(0xFF91A3B0);
//#D68782

const Color kOrange = Color(0xFFDE6F38);

const EdgeInsets paddingSideCards = EdgeInsets.fromLTRB(10, 50, 10, 10);
const EdgeInsets paddingCenterCard = EdgeInsets.fromLTRB(10, 20, 10, 10);
// //const EdgeInsets paddingArrowCard = EdgeInsets.fromLTRB(0, 100, 10, 100);

//* Paddings

List<EdgeInsets> setPadding(BuildContext context) => <EdgeInsets>[
//^ 0 padding of the inside of the middle column top large card
      EdgeInsets.symmetric(
        horizontal: getScreenSize(context).width * .01,
        vertical: getScreenSize(context).height * .01,
      ),
//^ 1 middle column second row side Card padding
      EdgeInsets.only(top: getScreenSize(context).height * .05),
//^ 2 middle column second row middle Card padding
      const EdgeInsets.fromLTRB(0, 10, 0, 0),
//^ 3 text padding in the card
      const EdgeInsets.fromLTRB(10, 80, 10, 10),
//^ 4 major card padding
      const EdgeInsets.symmetric(horizontal: 10),
//^ 5 devider extra padding
      const EdgeInsets.symmetric(horizontal: 20),
//^ 6 large screen background paddgin
      EdgeInsets.symmetric(
        vertical: getScreenSize(context).height * .015,
        horizontal: getScreenSize(context).width * .02,
      ),
//^ 7 Drawer paddgin
      const EdgeInsets.symmetric(vertical: 20, horizontal: 30)
    ];

//* Border Radius
//~ border radius of the middle column top large card
List<BorderRadius> setBorderRadius(BuildContext context) => <BorderRadius>[
      //^ middle column first row container border radius
      BorderRadius.circular(getScreenSize(context).width * .007),
      //^ middle column first row inside image radius
      BorderRadius.circular(getScreenSize(context).width * .1),
    ];
BorderRadius commonBorderRadius = BorderRadius.circular(15);
//* Box shadows
BoxShadow boxShadowMin = BoxShadow(
  color: kWhite.withOpacity(.4),
  blurRadius: 3,
  spreadRadius: 1,
);
BoxShadow boxShadowMax = const BoxShadow(
  blurRadius: 10,
  offset: Offset(10, 10),
  color: Color(0xFFA7A9AF),
);
//* buttons sizes
List<double> majorButtonSizes(BuildContext context) => [
      getScreenSize(context).width * .14,
      getScreenSize(context).height * .06,
    ];
//* Space Boxes
SizedBox horizontalMinBox(BuildContext context) =>
    SizedBox(width: getScreenSize(context).width * .01);
SizedBox verticalMinBox(BuildContext context) =>
    SizedBox(height: getScreenSize(context).height * .02);
//* spaces
double horizontalSpace(BuildContext context) =>
    getScreenSize(context).width * 0.05;
