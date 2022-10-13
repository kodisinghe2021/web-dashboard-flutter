import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget showSVG(String assetName) => SvgPicture.asset(
      assetName,
      alignment: Alignment.center,
    );
