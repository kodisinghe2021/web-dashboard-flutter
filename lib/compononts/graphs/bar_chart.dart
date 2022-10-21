import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:web_page_app/compononts/graphs/bar_data.dart';
import 'package:web_page_app/constant.dart';

class NewBarChart extends StatelessWidget {
  const NewBarChart({super.key});
  final double barWidth = 25;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: commonBorderRadius,
      ),
      color: kBackGround,
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: BarChart(
          BarChartData(
            gridData: FlGridData(show: false),
            borderData: FlBorderData(show: false),
            alignment: BarChartAlignment.center,
            maxY: 18,
            minY: 0,
            groupsSpace: 12,
            barTouchData: BarTouchData(enabled: true),
            barGroups: BarData.barData
                .map(
                  (data) => BarChartGroupData(
                    x: data.id,
                    barRods: [
                      BarChartRodData(
                        toY: data.y,
                        width: barWidth,
                        color: data.color,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(6),
                          topRight: Radius.circular(6),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
