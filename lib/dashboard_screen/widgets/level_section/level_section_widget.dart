// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class LevelSectionWidget extends StatelessWidget {
  const LevelSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<BarChartGroupData> rawBarGroups = [
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              fromY: 0,
              toY: 15,
            ),
            fromY: 0,
            toY: 7,
            width: 14,
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              fromY: 0,
              toY: 20,
            ),
            borderDashArray: [20],
            fromY: 0,
            toY: 10,
            width: 14,
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              fromY: 0,
              toY: 15,
            ),
            fromY: 0,
            toY: 6,
            width: 14,
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barRods: [
          BarChartRodData(
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              fromY: 0,
              toY: 14,
            ),
            fromY: 0,
            toY: 3,
            width: 14,
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barRods: [
          BarChartRodData(
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              fromY: 0,
              toY: 10,
            ),
            fromY: 0,
            toY: 5,
            width: 14,
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barRods: [
          BarChartRodData(
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              fromY: 0,
              toY: 12,
            ),
            fromY: 0,
            toY: 8,
            width: 14,
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
          ),
        ],
      ),
    ];

    return Container(
      constraints: BoxConstraints(
        minHeight: 200,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Level'),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: BarChart(
              BarChartData(
                maxY: 20,
                barGroups: rawBarGroups,
                alignment: BarChartAlignment.spaceAround,
                titlesData: FlTitlesData(show: false),
                gridData: FlGridData(show: false),
                borderData: FlBorderData(show: false),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Volume'),
                  ],
                ),
                SizedBox(height: 10, child: VerticalDivider()),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      size: 8,
                      color: Colors.blueGrey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Service'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
