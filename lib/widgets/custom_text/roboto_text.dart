import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_page_app/constant.dart';

class FontRoboto extends StatelessWidget {
  const FontRoboto({
    Key? key,
    required this.text,
    this.size,
    this.color,
    this.weight,
    this.align,
    this.letterSpacing,
    this.shadows,
  }) : super(key: key);
  final String text;
  final double? size;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? align;
  final double? letterSpacing;
  final List<BoxShadow>? shadows;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: size ?? 30,
        fontWeight: weight ?? FontWeight.w900,
        color: color ?? kBlack,
        letterSpacing: letterSpacing ?? 0,
        shadows: shadows,
      ),
    );
  }
}
