import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_page_app/constance.dart';

class HeadingOne extends StatelessWidget {
  const HeadingOne({
    Key? key,
    required this.text,
    this.size = 30,
    this.color = Colors.white,
  }) : super(key: key);
  final String text;
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto-Regular',
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
        letterSpacing: 2,
      ),
    );
  }
}

class FontRoboto extends StatelessWidget {
  const FontRoboto({
    Key? key,
    required this.text,
    this.size = 30,
    this.color = kBlack,
    this.weight = FontWeight.w900,
  }) : super(key: key);
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.roboto(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
