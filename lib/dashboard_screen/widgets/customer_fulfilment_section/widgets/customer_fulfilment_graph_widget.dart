import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomerFulfilmentGraphWidget extends StatelessWidget {
  const CustomerFulfilmentGraphWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData(2011, 600, 100),
      ChartData(2012, 400, 300),
      ChartData(2013, 500, 300),
      ChartData(2014, 600, 300),
      ChartData(2015, 400, 100),
      ChartData(2016, 200, 400),
      ChartData(2017, 100, 350),
      ChartData(2018, 500, 400),
      ChartData(2019, 100, 500),
      ChartData(2020, 100, 500),
      ChartData(2021, 100, 100),
    ];
    return SfCartesianChart(
        legend: Legend(
          isVisible: true,
          position: LegendPosition.bottom,
          legendItemBuilder: (legendText, series, point, seriesIndex) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.circle,
                          size: 8,
                          color: series?.color,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          legendText,
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    fontWeight: FontWeight.w100,
                                  ),
                        ),
                      ],
                    ),
                    Text(
                      seriesIndex == 1 ? '\$5,506' : '\$4,087',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                if (seriesIndex == 0)
                  SizedBox(height: 20, child: VerticalDivider()),
                SizedBox(
                  width: 10,
                ),
              ],
            );
          },
        ),
        series: <CartesianSeries>[
          StackedAreaSeries<ChartData, int>(
              legendIconType: LegendIconType.circle,
              legendItemText: 'Last Month',
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFA9DFD8),
                  Color(0xFF1D1E26),
                ],
              ),
              borderColor: Color(0xFFA9DFD8),
              color: Color(0xFFA9DFD8),
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y1),
          StackedAreaSeries<ChartData, int>(
              legendIconType: LegendIconType.circle,
              legendItemText: 'This Month',
              borderColor: Color(0xFFF2C8ED),
              color: Color(0xFFF2C8ED),
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF2C8ED),
                  Color(0xFF1D1E26),
                ],
              ),
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y2),
        ]);
  }
}

class ChartData {
  ChartData(
    this.x,
    this.y1,
    this.y2,
  );
  final int x;
  final double y1;
  final double y2;
}
