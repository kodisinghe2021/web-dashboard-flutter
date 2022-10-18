import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_page_app/constance.dart';

class FontRoboto extends StatelessWidget {
  const FontRoboto({
    Key? key,
    required this.text,
    this.size = 30,
    this.color = kBlack,
    this.weight = FontWeight.w900,
    this.align = TextAlign.left,
  }) : super(key: key);
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  final TextAlign align;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: GoogleFonts.roboto(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
