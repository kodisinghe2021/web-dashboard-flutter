import 'package:flutter/material.dart';

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
      ),
    );
  }
}
