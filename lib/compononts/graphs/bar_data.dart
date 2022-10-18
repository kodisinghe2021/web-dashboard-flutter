import 'package:flutter/material.dart';
import 'package:web_page_app/constance.dart';

class BarData {
  static int interval = 5;
  static List<Data> barData = [
    Data(
      id: 1,
      name: '12 Oct',
      y: 12,
      color: kLeftCardBottom,
    ),
    Data(
      id: 1,
      name: '13 Oct',
      y: 2,
      color: kLeftCardBottom,
    ),
    Data(
      id: 1,
      name: '14 Oct',
      y: 17,
      color: kLeftCardBottom,
    ),
    Data(
      id: 1,
      name: '15 Oct',
      y: 15,
      color: kLeftCardBottom,
    ),
  ];
}

class Data {
  final int id;
  final String name;
  final double y;
  final Color? color;

  Data({
    required this.id,
    required this.name,
    required this.y,
    required this.color,
  });
}
