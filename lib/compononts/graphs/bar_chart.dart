import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';
import 'package:web_page_app/compononts/graphs/bar_data.dart';

class NewBarChart extends StatelessWidget {
  const NewBarChart({super.key});
  final double barWidth = 25;
  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.center,
        maxY: 20,
        minY: 0,
        groupsSpace: 12,
        barTouchData: BarTouchData(enabled: true),
        // titlesData: FlTitlesData(
        //   topTitles: SideTitles(showTitles: false,),
        // ),
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
    );
  }
}
